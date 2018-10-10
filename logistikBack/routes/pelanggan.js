
exports.get_pelanggan = function(req, res){

    req.getConnection(function(err,connection){
         
          var query = connection.query('SELECT * FROM app_pelanggan',function(err,rows)
          {
              
              if(err) {
                  console.log("Error Selecting : %s ",err );
                  res.send({status:422, message: false});
              }else{
                  res.send({data:rows});
              }
             
           });
      });
    
  };
  
  exports.edit_pelanggan = function(req, res){
      
      var id = req.params.id;
      
      req.getConnection(function(err,connection){
         
          var query = connection.query('SELECT * FROM app_pelanggan WHERE id = ?',[id],function(err,rows)
          {
              
              if(err){
                  console.log("Error Selecting : %s ",err );
                  res.send({status:422, message: false});
              }else{
                  res.send({data:rows});
              }
           });
      }); 
  };
  
  /*Save the customer*/
  exports.post_pelanggan = function(req,res){
      
      var input = JSON.parse(JSON.stringify(req.body));
      
      req.getConnection(function (err, connection) {
          
          var data = {
              
              provinsi   : input.provinsi,
          
          };
          
          var query = connection.query("INSERT INTO app_pelanggan set ? ",data, function(err, rows)
          {
    
              if (err){
                  console.log("Error inserting : %s ",err );
                  res.send({status:422, message: false});
              }else{
                  res.send({status:200, message: true});
              }
            
          });
          
         // console.log(query.sql); get raw query
      
      });
  };
  
  exports.post_edit_pelanggan = function(req,res){
      
      var input = JSON.parse(JSON.stringify(req.body));
      var id = req.params.id;
      
      req.getConnection(function (err, connection) {
          
          var data = {
              
              provinsi    : input.provinsi,
          
          };
          
          connection.query("UPDATE app_pelanggan set ? WHERE id = ? ",[data,id], function(err, rows)
          {
    
              if (err){
                  console.log("Error Updating : %s ",err );
                  res.send({status:422, message: false});
              }else{
                  res.send({status:200, message: true});
              }
            
          });
      
      });
  };
  
  
  exports.delete_pelanggan = function(req,res){
            
       var id = req.params.id;
      
       req.getConnection(function (err, connection) {
          
          connection.query("DELETE FROM app_pelanggan  WHERE id = ? ",[id], function(err, rows)
          {
              
              if(err){
                  console.log("Error deleting : %s ",err );
                  res.send({status:422, message: false});
              }else{
                  res.send({status:200, message: true});
              }
               
          });
          
       });
  };
  
  
  