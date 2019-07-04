import React from 'react';



class ProjectShow extends React.Component {
    
    componentDidMount(){
        this.props.fetchProject(this.props.projectId)
    }
    
    render() {
        const project = this.props.project;
        if (!project) return null;
        const {description, body, materials} = project;
        
        return (
            <div>
                
                <h1>{description}</h1>
                <h1>{body}</h1>
                <h1>{materials} </h1>
            </div>
        )
    }
}

export default ProjectShow;