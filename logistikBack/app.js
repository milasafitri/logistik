/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var path = require('path');

//load customers route
var provinsi = require('./routes/provinsi'); 
var pelanggan = require('./routes/pelanggan');
var app = express();

var connection  = require('express-myconnection'); 
var mysql = require('mysql');

// all environments
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
//app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());

app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.use(
    
    connection(mysql,{
        
        host: 'localhost',
        user: 'root',
        password : '',
        database:'logistik'

    },'pool') //or single

);


app.get('/api/add',(req,res)=>{
  const {name}=req.query;
  connection.query(`INSERT INTO app_provinsi (provinsi) values('${provinsi}')`,(err,result)=>{
      if(err){
          return res.send(err);
      }else{
          return res.json({data:result})
      }
  });
})
app.get('/', routes.index);
app.get('/provinsi/get', provinsi.get_provinsi);
app.post('/provinsi/post', provinsi.post_provinsi);
app.get('/provinsi/delete/:id', provinsi.delete_provinsi);
app.get('/provinsi/edit/:id', provinsi.edit_provinsi);
app.post('/provinsi/edit/:id',provinsi.post_edit_provinsi);
app.get('/pelanggan/get', pelanggan.get_pelanggan);
app.post('/pelanggan/post', pelanggan.post_pelanggan);
app.get('/pelanggan/delete/:id', pelanggan.delete_pelanggan);
app.get('/pelanggan/edit/:id', pelanggan.edit_pelanggan);
app.post('/pelanggan/edit/:id',pelanggan.post_edit_pelanggan);


app.use(app.router);
const port=5000;
app.listen(port,()=>console.log(`running on ${port}`))