import React from 'react'
import { withRouter } from 'react-router-dom'
import { Link } from 'react-router-dom'

class ProjectItem extends React.Component {
   
    render() {
        
        const { description, body, materials } = this.props.project;
        
        return (
            <div>
            <div className="project-items">
                    <Link className="item-link" to={{pathname:`/projects/${this.props.project.id}`, search: "?sort=name",
        hash: "#the-hash"}}>
                    <img className="lead-project-photo" src={this.props.project.photo} />
                    <div className="link-div">
                        <h6 className="project-link">{description}</h6>
                    </div>
                </Link>
            
            </div>
            </div>
        )
    };
}

export default withRouter(ProjectItem);
