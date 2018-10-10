import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
import Divider from '@material-ui/core/Divider';
import HomeIcons from '@material-ui/icons/Home';
import Assignment from '@material-ui/icons/Assignment';
import {Link } from "react-router-dom";
import Person from '@material-ui/icons/Person';
import Kota from '@material-ui/icons/LocationCity';
import Provinsi from '@material-ui/icons/ListAlt';
import Pelanggan from '@material-ui/icons/Group';
import Uang from '@material-ui/icons/AttachMoney';
import Trans from '@material-ui/icons/Unarchive';
const styles = theme => ({
  root: {
    width:250,
    backgroundColor: theme.palette.background.paper,
  },
});
class NestedList extends React.Component {
  state = { open: false };

  handleClick = () => {
    this.setState(state => ({ open: !state.open }));
  };
  render() {
    const { classes } = this.props;

    return (
      <div className={classes.root}>
      <List component="nav">
      <ListItem button component={Link} to="/Dashboard">
          <ListItemIcon>
          <HomeIcons />
           </ListItemIcon>
          <ListItemText primary="Home"/>
          </ListItem>
          <Divider/>
        <ListItem button component={Link} to="/User">
          <ListItemIcon>
            <Person />
          </ListItemIcon>
          <ListItemText primary="Data User" />
        </ListItem>
      <ListItem button component={Link} to="/Kota">
          <ListItemIcon>
            <Kota />
          </ListItemIcon>
          <ListItemText primary="Data Kota"/>
        </ListItem>
        <ListItem button component={Link} to="/Provinsi">
          <ListItemIcon>
            <Provinsi />
          </ListItemIcon>
          <ListItemText primary="Data Provinsi"/>
        </ListItem>
        <ListItem button component={Link} to="/Pelanggan">
          <ListItemIcon>
            <Pelanggan />
          </ListItemIcon>
          <ListItemText primary="Data Pelanggan"/>
        </ListItem>
        <ListItem button component={Link} to="/Petugas">
          <ListItemIcon>
            <Person />
          </ListItemIcon>
          <ListItemText primary="Data Petugas"/>
        </ListItem>
        <ListItem button component={Link} to="/Pengiriman">
          <ListItemIcon>
            <Uang />
          </ListItemIcon>
          <ListItemText primary="Harga Pengiriman"/>
        </ListItem>
        <ListItem button component={Link} to="/Transaksi">
          <ListItemIcon>
            <Trans />
          </ListItemIcon>
          <ListItemText primary="Transaksi"/>
        </ListItem>
      </List>
      <Divider />
      <List component="nav">
        <ListItem button component={Link} to="/Laporan">
        <ListItemIcon>
            <Assignment />
          </ListItemIcon>
          <ListItemText primary="Laporan"/>
        </ListItem>
      </List>
    </div>
    );
  }
}
NestedList.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(NestedList);