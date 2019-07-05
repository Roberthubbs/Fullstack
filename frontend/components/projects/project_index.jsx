import React from 'react'
import ProjectItem from './project_index_item';


import { receiveAllProjects } from '../../actions/project_action';



export class ProjectIndex extends React.Component {
    // constructor(props){
    //     super(props)
    //     this.state = this.projects;
    // }

    componentDidMount(){
        this.props.receiveAllProjects()
    }
    
    
    render() {
        
        const { projects } = this.props
        
        return (
            
            projects.map(project => (
                
                <div>
                    <ProjectItem 
                    key={project.id}
                    project={project}
                    />
                </div>
            
                    
                
            ))
           
        );
    };
}


export default ProjectIndex;