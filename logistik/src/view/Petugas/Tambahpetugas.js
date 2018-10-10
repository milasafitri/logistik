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
  cssRoot: {
    backgroundColor: "#008B8B",
    '&:hover': {
      backgroundColor: "#008B8B",
    },
},
});

const jabatan = [
  {
    value: 'admin',
    label: 'Admin',
  },
  {
    value: 'operator',
    label: 'Operator',
  },
];
const status = [
  {
    value: 'tetap',
    label: 'Tetap',
  },
  {
    value: 'tidak tetap',
    label: 'Tidak tetap',
  },
];
class Tambahpetugas extends React.Component {
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
      <div style={{ backgroundColor: "#b6b7ba", width: "100%", height: "640px"}}>
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
                        Input Petugas
                    </Typography>
                    <Divider/>
                    <Grid container spacing={0}>
                        <Grid item xs={5}>
                    <TextField
                        id="full-width"
                        label="Nama Petugas"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
                        id="full-width"
                        label="Alamat"
                        fullWidth
                        margin="normal"
                    />
                    <TextField
          id="select-currency-native"
          fullWidth
          select
          label="Jabatan"
          className={classes.textField}
          value={this.state.currency}
          onChange={this.handleChange('currency')}
          SelectProps={{
            native: true,
            MenuProps: {
              className: classes.menu,
            },
          }}
          margin="normal"
        >
          {jabatan.map(option => (
            <option key={option.value} value={option.value}>
              {option.label}
            </option>
          ))}
        </TextField>  
                        </Grid>
                        <Grid item xs={2}>
                        </Grid>
                        <Grid item xs={5}>
                        
                       
                    <TextField
                        id="full-width"
                        label="No Kontak"
                        fullWidth
                        margin="normal"
                        type="number"
                    />
                   <TextField
          id="select-currency-native"
          fullWidth
          select
          label="Status"
          value={this.state.currency}
          onChange={this.handleChange('currency')}
          SelectProps={{
            native: true,
          }}
          margin="normal"
        >
          {status.map(option => (
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
        component={Link} to="/Petugas"
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

Tambahpetugas.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Tambahpetugas);