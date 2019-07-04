import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { withRouter } from 'react-router-dom'
import { Link } from 'react-router-dom'

class ProjectItem extends React.Component {
    

    
    // handleClick(){
    //     const projId = this.props.project.id;
    //     this.state.history.push(`projects/${projId}`)
    // }

    render() {
        const { description, body, materials } = this.props.project;

        
        return (
        
            <div className="project-items">
                <Link to={`projects/${this.props.project.id}`}>
                    {description}
                </Link>
            </div>
        )
    };
}

export default ProjectItem;
