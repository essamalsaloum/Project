import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter, Route, Switch } from "react-router-dom";
import './index.css';
import App from "./components/app";
import Home from "./components/home_page";
import OrgDetails from "./components/Add";
ReactDOM.render(
  <BrowserRouter>
    <div className='oute'>
      <Switch>
        <Route path="/Search" component={App} />
        <Route path="/add" component={OrgDetails} />
        <Route path="/" component={Home} />
      </Switch>
    </div>
  </BrowserRouter>,
  document.querySelector(".maimdiv")
);
/* <Route path="/add" component={OrgDetails} /> */
