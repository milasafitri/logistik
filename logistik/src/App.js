import React, { Component } from 'react';
import { BrowserRouter, Route } from 'react-router-dom';
import Login from "./view/Login";
import Dashboard from "./view/Dashboard";
import User from "./view/User/User";
import Kota from "./view/Kota/Kota";
import Tambahkota from "./view/Kota/Tambahkota";
import Provinsi from "./view/Provinsi/Provinsi";
import Tambahprovinsi from "./view/Provinsi/Tambahprovinsi";
import Pelanggan from "./view/Pelanggan/Pelanggan";
import Pengiriman from "./view/Pengiriman/Pengiriman";
import Tambahpengiriman from "./view/Pengiriman/Tambahpengiriman";
import Petugas from "./view/Petugas/Petugas";
import Laporan from "./view/Laporan/Laporan";
import Tambahpetugas from "./view/Petugas/Tambahpetugas";
import Tambahpelanggan from "./view/Pelanggan/Tambahpelanggan";
import Tambahuser from "./view/User/Tambahuser";
import Transaksi from "./view/Transaksi/Transaksi";

class App extends Component {
  render() {
    return (
       <BrowserRouter>
     <div>
     <Route exact path="/" component={Login}/>
     <Route path="/Dashboard" component={Dashboard}/>
     <Route path="/User" component={User}/>
     <Route path="/Tambahuser" component={Tambahuser}/>
     <Route path="/Kota" component={Kota}/>
     <Route path="/Provinsi" component={Provinsi}/>
     <Route path="/Pelanggan" component={Pelanggan}/>
     <Route path="/Tambahpelanggan" component={Tambahpelanggan}/>
     <Route path="/Pengiriman" component={Pengiriman}/>
     <Route path="/Tambahpengiriman" component={Tambahpengiriman}/>
     <Route path="/Petugas" component={Petugas}/>
     <Route path="/Tambahpetugas" component={Tambahpetugas}/>
     <Route path="/Laporan" component={Laporan}/>
     <Route path="/Transaksi" component={Transaksi}/>
     <Route path="/Tambahkota" component={Tambahkota}/>
     <Route path="/Tambahprovinsi" component={Tambahprovinsi}/>
     </div>
     </BrowserRouter>
    );
  }
}

export default App;
