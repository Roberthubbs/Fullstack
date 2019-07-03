import React from 'react'



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
                <ul>
                    {project.description}
                </ul>
                    
                
            ))
           
        );
    };
}


export default ProjectIndex;