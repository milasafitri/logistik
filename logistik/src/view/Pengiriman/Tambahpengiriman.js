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
const kota = [
    
  ];
class Tambahpengiriman extends React.Component {
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
        <Grid item xs={2}>
        </Grid>
        <Grid item xs={8}>
        <br/>
        <br/>
           <Grid container spacing={24}>
          <Grid item xs={8}>
                <Card>
                    <CardContent>
                    <Typography variant="headline" gutterBottom>
                        Input Harga
                    </Typography>
                    <Divider/>
                    <TextField
          id="select-currency-native"
          fullWidth
          select
          label="Nama Kota"
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
          {kota.map(option => (
            <option key={option.value} value={option.value}>
              {option.label}
            </option>
          ))}
        </TextField>
        <TextField
                        type="number"
                        full-width
                        label="Harga"
                        fullWidth
                        margin="normal"
                    />  
                    <br/>
                    <br/>
                    <Divider/>
                    <br/>
                    <Grid container spacing={0}>
                    <Grid item xs={2}>
                    </Grid>
                    <Grid item xs={8}>
                    </Grid>
                    <Grid item xs={2}>
                    <Button
        variant="contained"
        color="primary"
        fullWidth
        component={Link} to="/Pengiriman"
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

Tambahpengiriman.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Tambahpengiriman);