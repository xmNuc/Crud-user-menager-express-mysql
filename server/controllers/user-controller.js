const { v4: uuid } = require('uuid');
const { pool } = require('../../utils/db');


exports.view = (req, res) => {
  //   res.render('home');
  //Connect to database
  pool.getConnection((err, conn) => {
    if (err)
      throw new Error(
        `Failed to connect to database, please check whether the server is running...`
      );
    console.log(`Connection has been established - ID : ${conn.threadId}`);

    // All active users
    conn.query('SELECT * FROM user WHERE status = "active"', (err, rows) => {
      conn.release();

      if (!err) {
        let removedInfo = req.query.removed;
        res.render('home', { rows, removedInfo });
      } else {
        console.log(err);
      }

      // console.log(`Data from ${process.env.DB_NAME} database: \n`, rows);
    });
  });
};

//Search box, find users
exports.search = (req, res) => {
  //Connect to database
  pool.getConnection((err, conn) => {
    if (err)
      throw new Error(
        `Failed to connect to database, please check whether the server is running...`
      );
    console.log(`Connection has been established - ID : ${conn.threadId}`);

    let searchTerm = req.body.search;

    // Search for user
    conn.query(
      'SELECT * FROM user WHERE first_name LIKE ? OR last_name LIKE ? OR email LIKE ? OR phone LIKE ? OR status LIKE ?',
      [
        '%' + searchTerm + '%',
        '%' + searchTerm + '%',
        '%' + searchTerm + '%',
        '%' + searchTerm + '%',
        '%' + searchTerm + '%',
      ],
      (err, rows) => {
        conn.release();

        if (!err) {
          res.render('home', { rows });
        } else {
          console.log(err);
        }

        // console.log(`Data from ${process.env.DB_NAME} database: \n`, rows);
      }
    );
  });
};
//Render add user form
exports.adduserForm = (req, res) => {
  res.render('add-user');
};

// Create new user
exports.create = (req, res) => {
  const { first_name, last_name, email, phone, comments } = req.body;

  // console.log(req.body.first_name);

  //Connect to database
  pool.getConnection((err, conn) => {
    if (err)
      throw new Error(
        `Failed to connect to database, please check whether the server is running...`
      );
    console.log(`Connection has been established - ID : ${conn.threadId}`);

    // console.log(req.body);

    // Add user to database
const newId = uuid()
const fromSql= "INSERT INTO `user`(`id`,`first_name`,`last_name`,`email`,`phone`, `comments`, `status`) VALUES(:id, :first_name, :last_name, :email, :phone, :comments, :status)"
   conn.execute(fromSql,{
      id: newId, 
      first_name: first_name,
       last_name: last_name,
      email: email,
       phone: phone,
      comments: comments,
       status: 'active',
    },
      (err, rows) => {
        // console.log(first_name);
        conn.release();

        if (!err) {
          console.log(first_name, last_name, newId);
          res.render('add-user',{ alert: `User ${first_name} ${last_name} was added successfully` });
        } else {
          console.log(err);
        }

        console.log(`Data from ${process.env.DB_NAME} database: \n`, rows);
      }
    );
  });
};


exports.editUser = (req, res) => {
  pool.getConnection((err, conn) => {
    if (err)
      throw new Error(
        `Failed to connect to database, please check whether the server is running...`
      );
    console.log(`Connection has been established - ID : ${conn.threadId}`);

    // Edit user form - gets data from db
    conn.query('SELECT * FROM user WHERE id = ?', [req.params.id], (err, rows) => {
      conn.release();

      if (!err) {
        res.render('edit-user', {rows});
      } else {
        console.log(err);
      }

      console.log(`Data from ${process.env.DB_NAME} database: \n`, rows);
    });
  });
};


//Update user
exports.update = (req, res) => {
  const { first_name, last_name, email, phone, comments } = req.body;
   const {id} = req.params
  pool.getConnection((err, conn) => {
    if (err)
      throw new Error(
        `Failed to connect to database, please check whether the server is running...`
      );
    console.log(`Connection has been established - ID : ${conn.threadId}`);


  //  const updateDb = "UPDATE `user` SET `first_name` = :first_name WHERE `user`.`id` = '1'"

    const updateDb = "UPDATE `user` SET `first_name` = :first_name, `last_name` = :last_name , `email` = :email,`phone`= :phone, `comments` = :comments, `status`= :status WHERE `user`.`id` = :id"
    conn.execute(updateDb,
      {
       id: id, 
       first_name: first_name,
        last_name: last_name,
       email: email,
        phone: phone,
       comments: comments,
        status: 'active',
     },

    (err, rows) => {
      conn.release();

      if (!err) {
        
        pool.getConnection((err, conn) => {
          if (err)
            throw new Error(
              `Failed to connect to database, please check whether the server is running...`
            );
          console.log(`Connection has been established - ID : ${conn.threadId}`);
      
          // Edit user form - gets data from db
          conn.query('SELECT * FROM user WHERE id = ? ', [req.params.id], (err, rows) => {
            conn.release();
      
            if (!err) {
              res.render('edit-user', {rows,  alert: `User ${first_name} ${last_name} was updated successfully` });
            } else {
              console.log(err);
            }
      
            console.log(`Data from ${process.env.DB_NAME} database: \n`, rows);
          });
        });


      } else {
        console.log(err);
      }

      console.log(`Data from ${process.env.DB_NAME} database: \n`, rows);
    });
  });
};

exports.delete = (req, res) => {
  const { first_name, last_name } = req.body;
  const {id} = req.params
  pool.getConnection((err, conn) => {
    if (err)
      throw new Error(
        `Failed to connect to database, please check whether the server is running...`
      );
    console.log(`Connection has been established - ID : ${conn.threadId}`);

    // Edit user form - gets data from db
    conn.query('UPDATE user SET status = ? WHERE id = ?', ['removed', req.params.id]
    , (err, rows) => {
      conn.release();

      if (!err) {
        let removedInfo = encodeURIComponent('User succesflly removed')
        res.redirect('/?removed=' + removedInfo);
      } else {
        console.log(err);
      }

      console.log(`Data from ${process.env.DB_NAME} id ${id} was removed`);
      
    });
  });
};

exports.viewUser = (req, res) => {
  pool.getConnection((err, conn) => {
    if (err)
      throw new Error(
        `Failed to connect to database, please check whether the server is running...`
      );
    console.log(`Connection has been established - ID : ${conn.threadId}`);

    // View user details
    conn.query('SELECT * FROM user WHERE id = ?', [req.params.id], (err, rows) => {
      conn.release();

      if (!err) {
        res.render('view-user', { rows });
      } else {
        console.log(err);
      }

      console.log(`Data from ${process.env.DB_NAME} database: \n`, rows);
    });
  });
};