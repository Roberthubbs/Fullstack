import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { withRouter } from 'react-router-dom'
class ProjectIndexItem extends Component {
    constructor(props) {
        super(props);
        this.handleClick = this.handleClick.bind.this;
    }

    handleClick(){
        const projId = this.props.project.id;
        this.props.history.push(`projects/${projectId}`)
    }

    render() {
        const { description } = this.props.project;
        return (
            <div className="project-item" onClick={this.handleClick}>
                <div className="item-info">
                {description}
                </div>
            </div>
        )
    };
}

export default withRouter(ProjectIndexItem)
