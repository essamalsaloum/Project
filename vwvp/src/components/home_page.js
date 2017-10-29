import React, { Component } from "react";
import { Link } from "react-router-dom";
import { switcher } from "../obs_store";
class Home extends Component {
  render() {
    return (
      <div className='' id='home'>
        <div className='barhome'>
          <Link className="btn btn-warning btn-lg rightmar" to="/Search"
            onClick={() => switcher.put('description', true)}>
            For Companies
          </Link>
          <Link className="btn btn-warning btn-lg leftmarg" to="/Search"
            onClick={() => switcher.put('description', false)}>
            For newcomers
          </Link>
        </div>
        <img className="wvnlogo"
          src={require('../images/Logo_VluchtelingenWerk.jpg')}
          alt="wvnlogo" />
      </div>
    );
  }
}
export default Home;
