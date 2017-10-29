/* global google */
import React, { Component } from "react";
import PropTypes from 'prop-types';
import { selectedOneOrg, selectedCoords, selectedFilters, switcher } from "../obs_store";
let map;
const markers = [];
class GoogleMap extends Component {
  handleMarkers() {
    if (this.props.orgs)
      this.props.orgs.map(org => {
        org.contacts.map(contact => {
          const coord = { lat: contact.latitude, lng: contact.longitude };
          const image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
          const marker = new google.maps.Marker({
            position: coord,
            map: map,
           // animation: google.maps.Animation.DROP
          });
          if (selectedOneOrg.get('oneOrg') === org) {
            marker.setIcon(image);

            const info = ` <br/><h6>${org.name}</h6><p>${contact.post_code} ${contact.city} ${contact.house_number}</p>`;
            if (org.name) {
              const infoWindow = new google.maps.InfoWindow({
                content: info
              });
              infoWindow.open(map, marker);
            }
          }
          map.setZoom(7);
          markers.push(marker);
          const info = ` <br/><h6>${org.name}</h6><p>${contact.post_code} ${contact.city} ${contact.house_number}</p>`;
          if (org.name) {
            const infoWindow = new google.maps.InfoWindow({
              content: info
            });
            const x = document.getElementById(org.name + "hi");
            marker.addListener('click', () => {
              infoWindow.open(map, marker);
              marker.setIcon(image);
              map.setZoom(7);
              const elem = document.getElementById(org.name);
              elem.scrollIntoView();
              switcher.put('details', true);
              x.style.display = "block";
            });
            if (x)
              x.style.display = "none";
          }
          return null;
        });
        switcher.subscribe(() => {
          if (document.getElementById(org.name + "hi"))
            document.getElementById(org.name + "hi").style.display = "none";
        });
        return null;
      });
  }
  clearAllMarkers(someMap, someArray) {
    function setMapOnAll(someMap) {
      for (let i = 0; i < someArray.length; i++) {
        someArray[i].setMap(someMap);
      }
    }
    function clearMarkers() {
      setMapOnAll(null);
    }
    function deleteMarkers() {
      clearMarkers();
    }
    deleteMarkers();
  }
  componentWillMount() {
    selectedCoords.subscribe(() => {
      const org = selectedOneOrg.get('oneOrg');
      this.clearAllMarkers(map, markers);
      this.handleMarkers();
      const x = document.getElementById(org.name + "hi");
      if (x.style.display === "none") {
        x.style.display = "block";
      } //else {
      const elem = document.getElementById(org.name);
      elem.scrollIntoView();
    });
    selectedFilters.subscribe(() => {
      setTimeout(() => {
        selectedOneOrg.put('oneOrg', null);
        this.clearAllMarkers(map, markers);
        this.handleMarkers();
        window.scrollTo(0, 0);
      });
    });
    selectedCoords.subscribe(() => {
    });
  }
  componentDidMount() {
    map = new google.maps.Map(this.divMap, {
      zoom: 7,
      center: {
        lat: 52.0905,
        lng: 5.11974
      }
    });
    this.handleMarkers();
    window.scrollTo(0, 0);
  }
  componentWillUnmount() {
    selectedFilters.unsubscribe();
  }
  render() {
    return <div className='sizmap center-block' ref={(divMap) => { this.divMap = divMap; }} />;
  }
}
export default GoogleMap;
GoogleMap.propTypes = {
  orgs: PropTypes.array.isRequired,
};
