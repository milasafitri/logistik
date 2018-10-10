import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import Typography from '@material-ui/core/Typography';
import Header from "../components/Header";
import List from "../components/List";
import Grid from '@material-ui/core/Grid';
import { Link } from "react-router-dom";
import Plg from '../image/Customer.png';

const styles = theme => ({
loginCard: {
    height: 100,
  },
  warna: {
    backgroundColor: '#FFD700',
  },
   warna1: {
    backgroundColor: '#FFFF00',
  },
  warna2: {
    backgroundColor: '#008B8B',
  },
  warna3: {
    backgroundColor: '#20B2AA',
  },
  warna4: {
    backgroundColor: '#8A2BE2',
  },
  warna5: {
    backgroundColor: '#9370DB',
  },

});

class Dashboard extends React.Component {

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
              <Grid item xs={4}>
                
                      <Grid container spacing={0}>
                      <Grid xs={4} className={classes.warna}>
                      <Typography variant="display3" gutterBottom>
                        <img src={Plg}/>
                      </Typography>
                      </Grid>
                       <Grid xs={8} className={classes.warna1}>
                       <Typography variant="display3" gutterBottom>
                          
                      </Typography>
                      </Grid>
                      </Grid> 
              </Grid>
              <Grid item xs={4}>
               
                  <Grid container spacing={0}>
                      <Grid xs={4} className={classes.warna2}>
                      <Typography variant="display3" gutterBottom>
                        <img src={Plg}/>
                      </Typography>
                      </Grid>
                       <Grid xs={8} className={classes.warna3}>
                       <Typography variant="display3" gutterBottom>
                          
                      </Typography>
                      </Grid>
                      </Grid> 
                  
              </Grid>
              <Grid item xs={4}>
             
                  <Grid container spacing={0}>
                      <Grid xs={4} className={classes.warna4}>
                      <Typography variant="display3" gutterBottom>
                        <img src={Plg}/>
                      </Typography>
                      </Grid>
                       <Grid xs={8} className={classes.warna5}>
                       <Typography variant="display3" gutterBottom>
                      </Typography>
                      </Grid>
                      </Grid> 
              </Grid>
              </Grid>
        </Grid>
      </Grid>
      </div>

    );
  }
}

Dashboard.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Dashboard);