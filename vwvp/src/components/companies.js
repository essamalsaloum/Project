import React from "react";
import PropTypes from 'prop-types';
import { selectedFilters, selectedOneOrg, selectedCoords, switcher } from "../obs_store";
const Company = ({ org, allTags }) => {
    Company.propTypes = {
        org: PropTypes.object.isRequired,
        allTags: PropTypes.object.isRequired,
    };
    return (
        <div className="jumbotron mainn" id="mkf" onClick={() => {
            selectedOneOrg.put('oneOrg', org);
            const coords = [];
            selectedOneOrg.get('oneOrg').contacts.map(contact => {
                const coord = { lat: contact.latitude, lng: contact.longitude };
                coords.push(coord);
                return null;
            });
            selectedCoords.put('coords', coords);
        }}>
            <h3 className='bg-primary txtcn' id={org.name} > Company name : {org.name}</h3>
            <img src={org.logo} className=' inl flo mar' alt="Company logo" />
            <div className='inl flo cleari mardiv'>
                <p className="lead bg-danger initi" >Categories</p>
                {org.tags.map((o, i) =>
                    <div key={i} >
                        <span className={selectedFilters.get(o) ? 'label label-primary' : null}>
                            {allTags[o].name}
                        </span>
                    </div>)}
            </div>
            <div id={org.name + "hi"} className='hi flo' >
                <p className="lead bg-info txtcn">Description</p>
                <p className="">{switcher.get('description') ? org.description_company : org.description_person}</p>
                <p className="lead bg-info txtcn"> Contact details</p>
                <div className='flo inl adr ' >
                    {org.contacts.map((cont, i) =>
                        <div key={i} className='backc flo inl' >
                            <p className="inl">Phone: {cont.phone}</p> <br />
                            <p className="inl ">Email:</p> <a href={`mailto:${cont.email}`}>{cont.email}</a><br />
                            <p className="inl ">Website:</p> <a target='_blank' href={cont.web}>{cont.web}</a><br />
                            <p className="inl">Post code: {cont.post_code} {cont.city}</p> <br />
                            <p className="">House number: {cont.house_number}</p>
                        </div>)}
                </div>
            </div>
        </div>
    );

};
export default Company;

