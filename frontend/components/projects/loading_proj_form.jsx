import React from 'react';
import { Link }  from 'react-router-dom';
class LoadingProjectForm extends React.Component {
    constructor(props){
        super(props)
        
        // this.state.project = this.props.projects[0];
       
        
    }

   

    componentDidMount(){
        
        this.props.fetchProjects()
    }
    render() {
        if (!this.props.project){
            return null
        }
        return ( 
            <div className="loading-page">
               <div className="loading-title-div">
                <h1 className="loading-title">Project is Loaded, click to continue</h1> 
                </div> 
                <br />
                <div className="loading-div">
                    <Link to={`/projects/${this.props.project.id}/edit`} className="loading-link">
                    Continue to project
                    </Link>
                </div>
            </div> 
        )
    }
}

export default LoadingProjectForm