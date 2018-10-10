exports.login1 = function(req,res){
    
    var input = JSON.parse(JSON.stringify(req.body));
    
    req.getConnection(function (err, connection) {
        var data = {
            
            username  : input.username,
            password  : input.password,
        
        };
        
        var query = connection.query('SELECT * FROM app_user WHERE username = ?',data, function (error, results, fields) {
            if (error) {
                res.json({
                  status:false,
                  message:'there are some error with query'
                  })
            }else{
              if(results.length >0){
                  if(password==results[0].password){
                      res.json({
                          status:true,
                          message:'successfully authenticated'
                      })
                  }else{
                      res.json({
                        status:false,
                        message:"username and password does not match"
                       });
                  }
              }
              else{
                res.json({
                    status:false,    
                  message:"username does not exits"
                });
              }
            }
          }); 
       // console.log(query.sql); get raw query
    
    });
};