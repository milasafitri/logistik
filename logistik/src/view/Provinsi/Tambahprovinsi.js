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
import axios from 'axios'
import APPCONFIG from '../../components/Config/config'
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

class Tambahprovinsi extends React.Component {
  constructor() {
    super();
    this.state = {
      provinsis: [],
      provinsi:{
          provinsi:''
      }
    };
  }
  componentDidMount() {
    fetch('/provinsi/get')
     .then(result=>{
         return result.json();
     }).then(data=>{
         let provinsis=data.result.map((provinsi)=>{
             return(
                 <li key={provinsi.id}>{provinsi.provinsi}</li>
             )
         })
         this.setState({provinsis:provinsis});
         console.log("state",this.state.provinsis)
     })
  }
  render() {
    const { classes } = this.props;
    const {provinsi}=this.state;
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
                        Input Provinsi
                    </Typography>
                    <Divider/>
                    
        <TextField
                        id="full-width"
                        label="Nama Provinsi"
                        fullWidth
                        margin="normal"
                        value={provinsi.provinsi}
                        onChange={e=>this.setState({provinsi:{...provinsi,provinsi:e.target.value}})}
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
        onClick={this.add}
        component={Link} to="/Provinsi"
        className={classNames(classes.cssRoot)}
      >
        SIMPAN
      </Button>
                    </Grid>
                    </Grid>
                    </CardContent>
                </Card>
                {this.state.provinsis}
                </Grid>
           </Grid>
      </Grid>
      </Grid>

      </div>
    );
  }
}

Tambahprovinsi.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Tambahprovinsi);