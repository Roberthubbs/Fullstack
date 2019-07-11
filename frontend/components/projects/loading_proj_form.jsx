import React from 'react';
import { Link }  from 'react-router-dom';
class LoadingProjectForm extends React.Component {
    constructor(props){
        super(props)
        
        // this.state.project = this.props.projects[0];
        this.state = {
            render: false
        }
        
    }

   

    componentDidMount(){
        
        this.props.fetchProjects();
        setTimeout(function () { 
            this.setState({ render: true }) 
        }.bind(this), 2000)
    }
    render() {
        if (!this.props.project){
            return null
        } 
        if (this.state.render === false){
            return(
                <div className="loading-spinner">
                    <img className="spinner" src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif" />
                </div>
            )
        }
        return ( 
            <div className="loading-page">
               <div className="loading-title-div">
                <h1 className="loading-title">Project is Loaded, click to continue</h1> 
                    <Link to={`/projects/${this.props.project.id}/edit`} className="loading-link">
                    Continue to project
                    </Link>
                </div>
            </div> 
        )
    }
}

export default LoadingProjectForm