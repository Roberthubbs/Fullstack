import React from 'react';



class ProjectShow extends React.Component {
    
    componentDidMount(){
        
        this.props.fetchProject(this.props.match.params.projectId)
        
    }
    
    render() {
        const project = this.props.project;
        
        if (!project) return null;
        const { description, materials, body } = project;
        
        return (
            <div className="project-show-container">
                <h1 className="project-title">{description}</h1>
                <div className="project-materials">
                    <h2 className="mats">What you'll need</h2>
                    <h2>{materials}</h2>
                </div>
                <div className="project-body">{body}</div>
            </div>
        )
    }
}

export default ProjectShow;