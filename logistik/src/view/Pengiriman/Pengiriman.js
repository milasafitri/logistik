import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardContent from '@material-ui/core/CardContent';
import Button from '@material-ui/core/Button';
import Header from "../../components/Header";
import List from "../../components/List";
import Grid from '@material-ui/core/Grid';
import { Link } from "react-router-dom";
import MUIDataTable from "mui-datatables";
import red from '@material-ui/core/colors/red';
import classNames from 'classnames';
const columns = ["Id", "Provinsi", "Kota", "Aksi"];

const data = [
 
];
const styles = theme => ({

  loginCard: {
    height: 100,
  },
  cssRoot: {
    color: theme.palette.getContrastText(red[500]),
    backgroundColor: red[500],
    '&:hover': {
      backgroundColor: red[700],
    },
},
});

class Pengiriman extends React.Component {

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
                        <Grid container spacing={12}>
                        <Grid item xs={2}>
                    <Button variant="contained" color="primary" className={classes.button} component={Link} to="/Tambahpengiriman">
                    Tambah Data
                    </Button>
                    </Grid>
                    <Grid item xs={3}>
                    <Button
        variant="contained"
        color="primary"
        className={classNames(classes.cssRoot)}
      >
        Hapus Data
      </Button>
                    </Grid>
                     </Grid>
                     <Grid item xs={12}>
                     <br/>
                     </Grid>
                    <MUIDataTable
                    title={"Data Harga Pengiriman"}
                    data={data}
                    columns={columns}
                    />
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

Pengiriman.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Pengiriman);