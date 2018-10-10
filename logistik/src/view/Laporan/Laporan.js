import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardContent from '@material-ui/core/CardContent';
import Button from '@material-ui/core/Button';
import Header from "../../components/Header";
import List from "../../components/List";
import Grid from '@material-ui/core/Grid';
import TextField from '@material-ui/core/TextField';
import classNames from 'classnames';
import Typography from '@material-ui/core/Typography';
import red from '@material-ui/core/colors/red';
import Print from '@material-ui/icons/LocalPrintshop';
import { Link } from "react-router-dom";

const styles = theme => ({
    card:{
        height : 200,
    },
    cssRoot: {
        color: theme.palette.getContrastText(red[500]),
        backgroundColor: red[500],
        '&:hover': {
          backgroundColor: red[700],
        },
    },
});


class Laporan extends React.Component {

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
                <Card className={classes.card}>
                    <CardContent>
                    <Typography variant="headline" gutterBottom>
                        Laporan
                    </Typography>

                    </CardContent>
                    <Grid container spacing={24}>
                        <Grid item xs={1}>
                        </Grid>
                        <Grid item xs={3}>
                        <TextField
                            id="date"
                            fullWidth
                            label="Dari"
                            type="date"
                            defaultValue="2018-05-24"
                            className={classes.textField}
                            InputLabelProps={{
                            shrink: true,
                            }}
                        />
                        </Grid>
                        <Grid item xs={3}>
                        <TextField
                            id="date"
                            fullWidth
                            label="Sampai"
                            type="date"
                            defaultValue="2017-05-24"
                            className={classes.textField}
                            InputLabelProps={{
                            shrink: true,
                            }}
                        />
                        </Grid>
                    </Grid>
                    <Grid container spacing={24}>
                    <Grid item xs={1}>
                    </Grid>
                    <Grid item xs={3}>
                    <Button
        variant="contained"
        color="primary"
        
        className={classNames(classes.cssRoot)}
      >
        Print Data<Print/>
      </Button>
                    </Grid>
                    </Grid>
                    </Card>
          </Grid>
           </Grid>
      </Grid>
      </Grid>
      </div>

    );
  }
}

Laporan.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Laporan);