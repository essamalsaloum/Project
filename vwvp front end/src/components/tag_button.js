import React from "react";
import PropTypes from 'prop-types';
import { selectedFilters } from "../obs_store";
const ButtonItem = (props) => {
    ButtonItem.propTypes = {
        id: PropTypes.string.isRequired,
        name: PropTypes.string.isRequired
    };
    const checked = selectedFilters.get(props.id);
    return (
        <button
            className={selectedFilters.get(props.id) ? 'btn btn-primary active' : 'btn btn-info'}
            key={props.id}
            onClick={() => {
                selectedFilters.put(props.id, !checked);
            }} >
            {props.name}
        </button>
    );
};

export default ButtonItem;

