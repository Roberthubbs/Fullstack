import React from 'react';



class ProjectShow extends React.Component {
    
    componentDidMount(){
        
        this.props.fetchProject(this.props.match.params.projectId)
        
    }
    
    render() {
        const project = this.props.project;
        
        if (!project) return null;
        const { description } = project;
        
        return (
            <div>
                
                <h1>{description}</h1>
              
            </div>
        )
    }
}

export default ProjectShow;