import React from 'react'
import { withRouter } from 'react-router-dom'
import { Link } from 'react-router-dom'

class ProjectItem extends React.Component {
   
    
    

    
    // handleClick(){
    //     const projId = this.props.project.id;
    //     this.state.history.push(`projects/${projId}`)
    // }
    
   
    render() {
        const { description, body, materials} = this.props.project;
        if (!this.props.project.photo) return null; 
        const imageUrl = this.props.project.photo.record.image_url;
       
        return (
            <div>
            <div className="project-items">
                <Link to={`projects/${this.props.project.id}`}>
                    {description}
                </Link>
            <img src={imageUrl} />
            </div>
            </div>
        )
    };
}

export default withRouter(ProjectItem);
