import React from 'react';
import { Link } from 'react-router-dom';


class ProjectShow extends React.Component {
    
    componentDidMount(){
        
        this.props.fetchProject(this.props.match.params.projectId)
        
    }
    
    
    render() {
        
        const project = this.props.project ? this.props.project : {description: '', materials: '', body: ''};
        const steps = this.props.steps ? this.props.steps : null;
        // if (!project) return null;
        // if (!steps) return null;
        const { description, materials, body } = project;

        
        if (project.author_id !== this.props.current_user){
        return (
            <div className="project-show-container">
                {/* {steps[0]} */}
                <h1 className="project-title">{description}</h1>
                <div className="project-materials">
                    <h2 className="mats">What you'll need</h2>
                    <h2>{materials}</h2>
                </div>
                <ul className="project-body">
                {steps.map(step =>(
                            <li className="steps-div">
                                <h1 className="step-title">{step.title}</h1>
                                <p className="step-body">{step.body}</p>
                            </li>
                        )
                )}
                    
                </ul>
                  
                  
            </div>
        )} else { return (
            <div className="project-show-container">
                {/* {steps[0]} */}
                <h1 className="project-title">{description}</h1>
                <div className="project-materials">
                    <h2 className="mats">What you'll need</h2>
                    <h2>{materials}</h2>
                </div>
                <ul className="project-body">
                    {steps.map(step => (
                        <li className="steps-div">
                            <h1 className="step-title">{step.title}</h1>
                            <p className="step-body">{step.body}</p>
                        </li>
                    )
                    )}

                </ul>
                <div className="add-step-link">
                    <Link to={`/projects/${project.id}/steps`}>
                        Add Another Step
                    </Link>
                </div>

            </div>
        )}
    }
}

export default ProjectShow;