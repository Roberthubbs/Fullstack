import React from 'react'
import { withRouter } from 'react-router-dom'
import { Link } from 'react-router-dom'

class ProjectItem extends React.Component {
   
    render() {
        
        const { description, body, materials, } = this.props.project;
        const author = this.props.project.author.username
        return (
            <div>
            <div className="project-items">
                    <Link className="item-link" to={`/projects/${this.props.project.id}`}>
                    <img className="lead-project-photo" src={this.props.project.photo} />
                    <div className="link-div">
                        <h6 className="project-link">{description}</h6>
                        <h6 className="project-by">by: {author} </h6>
                    </div>
                </Link>
            
            </div>
            </div>
        )
    };
}

export default withRouter(ProjectItem);
