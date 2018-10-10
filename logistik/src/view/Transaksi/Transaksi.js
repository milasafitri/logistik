import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import TextField from '@material-ui/core/TextField';
import Card from '@material-ui/core/Card';
import CardContent from '@material-ui/core/CardContent';
import Button from '@material-ui/core/Button';
import Header from "../../components/Header";
import List from "../../components/List";
import Grid from '@material-ui/core/Grid';
import Typography from '@material-ui/core/Typography';
import { Link } from "react-router-dom";
import Divider from '@material-ui/core/Divider';
import classNames from 'classnames';
const styles = theme => ({

  loginCard: {
    height: 100,
  },
});
const pelanggan = [
  
];
const kota= [
  
];
const provinsi = [
  
];
const statusbayar = [
    {
        value: '0',
        label: 'Belum Lunas',
      },
      {
        value: '1',
        label: 'Lunas',
      },
];
const statusreject = [
    {
        value: '0',
        label: 'Belum Reject',
      },
      {
        value: '1',
        label: 'Rejects',
      },
];
class Transaksi extends React.Component {
  state = {
    
  };

  handleChange = name => event => {
    this.setState({
      [name]: event.target.value,
    });
  };

  render() {
    const { classes } = this.props;

    return (
      <div style={{ backgroundColor: "#b6b7ba", width: "100%", height: "800px"}}>
       <Header />
       <Grid container spacing={24}>
        <Grid item xs={2}>
        <List />
        </Grid>
        <Grid item xs={1}>
        </Grid>
        <Grid item xs={8}>
        <br/>
        <br/>
        <Grid container spacing={24}>
          <Grid item xs={12}>
                <Card>
                    <CardContent>
                    <Typography variant="headline" gutterBottom>
                        Input Transaksi
                    </Typography>
                    <Divider/>
                    <Grid container spacing={24}>
                        <Grid item xs={3}>
                        <TextField
                        id="full-width"
                        label="No sttb"
                        fullWidth
                        margin="normal"
                        />   
                    <TextField
                    id="select-currency-native"
                    fullWidth
                    select
                    label="Pelanggan"
                    value={this.state.currency}
                    onChange={this.handleChange('currency')}
                    SelectProps={{
                    native: true,
                    }}
                    margin="normal"
                    >
                    {pelanggan.map(option => (
                    <option key={option.value} value={option.value}>
                    {option.label}
                    </option>
                   ))}
                    </TextField>
                    <TextField
                        id="full-width"
                        label="Jumlah titipan"
                        type="number"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        label="Berat"
                        type="number"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        label="isi barang"
                        fullWidth
                        margin="normal"
                        />
                         <TextField
                        id="full-width"
                        label="Discount"
                        type="number"
                        fullWidth
                        margin="normal"
                    />
                        </Grid>
                        <Grid item xs={3}> 
                    <TextField
                        id="full-width"
                        label="Biaya"
                        type="number"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        label="Penerima"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        label="Yang menerima"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        label="Alamat Penerima"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        label="Kontak Penerima"
                        type="number"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                    id="select-currency-native"
                    fullWidth
                    select
                    label="Nama Kota"
                    value={this.state.currency}
                    onChange={this.handleChange('currency')}
                    SelectProps={{
                    native: true,
                    }}
                    margin="normal"
                    >
                    {kota.map(option => (
                    <option key={option.value} value={option.value}>
                    {option.label}
                    </option>
                   ))}
                    </TextField>
                        </Grid>
                        <Grid item xs={3}>
                        
                    <TextField
                        id="full-width"
                        label="Kode Pos"
                        type="number"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                    id="select-currency-native"
                    fullWidth
                    select
                    label="Nama Provinsi"
                    value={this.state.currency}
                    onChange={this.handleChange('currency')}
                    SelectProps={{
                    native: true,
                    }}
                    margin="normal"
                    >
                    {provinsi.map(option => (
                    <option key={option.value} value={option.value}>
                    {option.label}
                    </option>
                   ))}
                    </TextField>
                    <TextField
                            id="date"
                            fullWidth
                            label="Tanggal Pengiriman"
                            type="date"
                            defaultValue="2018-05-24"
                            className={classes.textField}
                            InputLabelProps={{
                            shrink: true,
                            }}
                        />
                    <TextField
                            id="date"
                            fullWidth
                            label="Tanggal Penerimaan"
                            type="date"
                            defaultValue="2018-05-24"
                            className={classes.textField}
                            InputLabelProps={{
                            shrink: true,
                            }}
                        />
                    <TextField
                    id="select-currency-native"
                    fullWidth
                    select
                    label="Status Pengiriman"
                    value={this.state.currency}
                    onChange={this.handleChange('currency')}
                    SelectProps={{
                    native: true,
                    }}
                    margin="normal"
                    >
                    {kota.map(option => (
                    <option key={option.value} value={option.value}>
                    {option.label}
                    </option>
                   ))}
                    </TextField>
                    <TextField
                    id="select-currency-native"
                    fullWidth
                    select
                    label="Petugas"
                    value={this.state.currency}
                    onChange={this.handleChange('currency')}
                    SelectProps={{
                    native: true,
                    }}
                    margin="normal"
                    >
                    {kota.map(option => (
                    <option key={option.value} value={option.value}>
                    {option.label}
                    </option>
                   ))}
                    </TextField>
                  
                        </Grid>
                        <Grid item xs={3}>
                        
                    <TextField
                    id="select-currency-native"
                    fullWidth
                    select
                    label="status reject"
                    value={this.state.currency}
                    onChange={this.handleChange('currency')}
                    SelectProps={{
                    native: true,
                    }}
                    margin="normal"
                    >
                    {statusreject.map(option => (
                    <option key={option.value} value={option.value}>
                    {option.label}
                    </option>
                   ))}
                    </TextField>
                    <TextField
                        id="full-width"
                        label="Kecamatan"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        type="number"
                        label="Biaya Laba"
                        fullWidth
                        margin="normal"
                    />
                    
                    <TextField
                    id="select-currency-native"
                    fullWidth
                    select
                    label="status Pembayaran"
                    value={this.state.currency}
                    onChange={this.handleChange('currency')}
                    SelectProps={{
                    native: true,
                    }}
                    margin="normal"
                    >
                    {statusbayar.map(option => (
                    <option key={option.value} value={option.value}>
                    {option.label}
                    </option>
                   ))}
                    </TextField>
                        </Grid>
                    </Grid>
                    <br/>
                    <br/>
                    <Divider/>
                    <br/>
                    <Grid container spacing={0}>
                    <Grid item xs={2}>
                    <Button variant="contained" color="primary" fullWidth component={Link} to="/Petugas">
                    Lihat Data
                    </Button>
                    </Grid>
                    <Grid item xs={8}>
                    </Grid>
                    <Grid item xs={2}>
                    <Button
        variant="contained"
        color="primary"
        fullWidth
        component={Link} to="/Pelanggan"
        className={classNames(classes.cssRoot)}
      >
        SIMPAN
      </Button>
                    </Grid>
                    </Grid>
                    </CardContent>
                </Card>
                </Grid>
           </Grid>  
      </Grid>
      </Grid>
      </div>

    );
  }
}

Transaksi.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Transaksi);