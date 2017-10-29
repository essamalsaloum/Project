import React from "react";
import ButtonItem from "./tag_button";
import PropTypes from 'prop-types';
const TagsButtons = (props) => {
  TagsButtons.propTypes = {
    allTags: PropTypes.array.isRequired
  };
  if (props) {
    const buttonItem = props.allTags.map(tag =>
      <ButtonItem key={tag.id} id={tag.id} name={tag.name} />);
    return (
      <div className="btn-group btn-group-lg ">
        {buttonItem}
      </div>
    );
  }
};
export default TagsButtons;
