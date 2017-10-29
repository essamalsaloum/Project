import React, { Component } from "react";
import axios from "axios";
import _ from "lodash";
import { Link } from "react-router-dom";
import TagsButtons from "./tags_buttons";
import Company from "./companies";
//import OrgDetails from "./Add";
import { selectedFilters, allTags } from "../obs_store";
import GoogleMap from "./google_map";
const ROOT_URL = "http://localhost:8080";
//const ROOT_URL = "http://www.taalmap.nl:3008";
class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      ready: false,
      er: ""
    };
  }
  componentWillMount() {
    axios.get(`${ROOT_URL}/search`)
      .then((res) => {
        this.setState({
          allCompanies: res.data.orgs,
          matchingCompanies: res.data.orgs,
          allTags: res.data.tags,
          ready: true
        });

      })
      .catch((error) => {
        // Error
        if (error.response) {
          this.setState({
            ready: true,
            er: `${error.response.status} `
          });
        } else if (error.request) {
          this.setState({
            ready: true,
            er: `${error.request}`
          });
        } else {
          this.setState({
            ready: true,
            er: `${error.message}`
          });
          console.log('Error', error.message);
        }
        console.log(error.config);
      });
    selectedFilters.subscribe(this.mainFlter);
  }
  componentDidMount() {
  }
  componentWillUnmount() {
    selectedFilters.unsubscribe(this.mainFlter);
  }
  mainFlter = () => {
    const raw = this.state.allCompanies;
    const matchingCompanies = Object.keys(raw)
      .filter(key => {
        for (const tag of raw[key].tags) {
          if (selectedFilters.get(tag))
            return true;
        }
        return false;
      })
      .reduce((obj, key) => {
        obj[key] = raw[key];
        return obj;
      }, {});
    this.setState({
      matchingCompanies: _.isEmpty(matchingCompanies) ? this.state.allCompanies : matchingCompanies
    });
  }
  render() {
    if (this.state.er.length !== 0 && this.state.ready) {
      return (
        <h1>
          Internal Server Error... {this.state.er}
        </h1>
      );
    }
    else if (!this.state.ready) {
      return (
        <div className='loader'>
        </div>
      );
    }
    allTags.put('allTags', this.state.allTags);
    allTags.put('port', ROOT_URL);
    //from objects without keys
    //to array
    const arrayAllTags = [];
    Object.keys(this.state.allTags).map(key => {

      const tag = { id: key, name: this.state.allTags[key] };
      arrayAllTags.push(tag);
      return null;
    });
    //to objects of keys
    const objallTags = _.mapKeys(arrayAllTags, 'id');
    //to array
    const myNdata = Object.keys(this.state.matchingCompanies).map(key => {
      return this.state.matchingCompanies[key];
    });

    const renderCompanies = myNdata.map((o, i) => <Company key={i} org={o} allTags={objallTags} />);
    return (
      <div className='app'>
        <div className='goomap '> <GoogleMap orgs={myNdata} /> </div >
        <div className=' tags'>  <TagsButtons allTags={arrayAllTags} /> </div>
        <div className='companies'> {renderCompanies}  </div>
        <Link className="btn btn-primary btn-sm add" to="/add">
          Add Company
          </Link>
        <Link className="btn btn-primary btn-sm back" to="/">
          Back
          </Link>
      </div>
    );
  }
}
export default App;

