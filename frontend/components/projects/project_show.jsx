import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHeart } from '@fortawesome/free-solid-svg-icons';

class ProjectShow extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            projectId: this.props.projectId,
            numLikes: 0,
            clicked: false
        };
        
        this.handleClick = this.handleClick.bind(this);
        this.IncrementItem = this.IncrementItem.bind(this);
    }
    componentDidMount(){
        
        this.props.fetchProject(this.props.match.params.projectId)
        setTimeout(() => {

            this.setState({ numLikes: this.props.project.number_of_likes}), 200
        });
    }
    
    handleClick(e){
        e.preventDefault();
        this.props.deleteProject(this.state.projectId).then(() => this.props.history.push("/"))
    };
    
    IncrementItem(){
        if (this.state.clicked === false){
            this.setState({ numLikes: this.state.numLikes + 1 });
            this.setState({clicked: true})
        } else if (this.state.clicked === true){
            this.setState({ numLikes: this.state.numLikes - 1 });
            this.setState({ clicked: false })
        };
    }
    componentDidUpdate(){
        this.props.project.number_of_likes
    }
    
    render() {
        
        const project = this.props.project ? this.props.project : {description: '', materials: '', body: ''};
        const steps = this.props.steps ? this.props.steps : null;
        const authorname = this.props.authorname
        // if (!project) return null;
        // if (!steps) return null;
        const { description, materials, body} = project;
        
        
        if (project.author_id !== this.props.current_user){
        return (
            <div className="project-show-container">
                {/* {steps[0]} */}
                <h1 className="project-title">{description}</h1>
                <div className="project-materials">
                    <h2 className="mats">What you'll need</h2>
                    <h2>{materials}</h2>
                    <h2>by: {authorname}</h2>
                   
                </div>
                <div className="likesCounter" >
                    <button className="hide-button" onClick={this.IncrementItem}><h2>{this.state.numLikes} <FontAwesomeIcon icon={faHeart} className="heart" /></h2></button> 
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
                <div className="likesCounter">
                    <h2 className="center-likes">{project.number_of_likes} <FontAwesomeIcon icon={faHeart} className="heart" /></h2>
                </div>
                <div className="add-step-link">
                    <Link to={`/projects/${project.id}/steps`}>
                        Add Another Step
                    </Link>
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
                
                <div>
                    <button className="delete-button"onClick={this.handleClick}>Delete Project</button>
                </div>
            </div>
        )}
    }
}

export default ProjectShow;