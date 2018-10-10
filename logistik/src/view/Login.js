import React from 'react';
import { Link } from "react-router-dom";
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardContent from '@material-ui/core/CardContent';
import Typography from '@material-ui/core/Typography';
import Grid from '@material-ui/core/Grid';
import TextField from '@material-ui/core/TextField';
import Button from '@material-ui/core/Button';

const styles = theme => ({
   margin: {
    margin: theme.spacing.unit,
  },
  
  card: {
    minwidth:275,
    marginTop: 80,
  },
  title: {
    marginLeft: 60,
    marginBottom: 10,
    fontSize: 17,
  },
  pos: {
    marginBottom: 12,
  },
  button: {
    backgroundColor: '#008B8B',
    '&:hover': {
      backgroundColor: '#008B8B',
    },
  },

});

class Login extends React.Component {

  render() {
    const { classes } = this.props;

    return (
      <div style={{ backgroundColor: "#F8F8FF", width: "100%", height: "650px"}}>
    <Grid container spacing={24}>
        <Grid item xs>
        </Grid>
        <Grid item xs justify="center">
          <Card className={classes.card}>
        <CardContent align="center">
          <Typography variant="headline" component="h2">
            WELCOME LOGISTIK
          </Typography>
          <Typography component="h2">
            Silahkan login
          </Typography><br/>
          <Grid container spacing={0}>
        <Grid item xs={1}>
          
        </Grid>
        <Grid item xs={10}>
          <TextField
          id="full-width"
          label="Username"
          placeholder="Username"
          fullWidth
          margin="normal"
        /><br/>
          <TextField
          id="password-input"
          label="Password"
          fullWidth
          type="password"
          autoComplete="current-password"
          margin="normal"
        /><br/><br/>
        <Grid container spacing={0}>
        
        <Grid item xs = {12}>
          <Button variant="contained" color="primary" fullWidth className={classes.button} component={Link} to="/Dashboard">
        lOGIN
        </Button>
        </Grid>
        </Grid>
        </Grid>
        <Grid item xs={3}>
        </Grid>
        </Grid>
        <br/>
        
        </CardContent>
        <br />
      </Card>
        </Grid>
        <Grid item xs>
        </Grid>
      </Grid>
    </div>
    );
  }
}

Login.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Login);