import React from 'react'
import ProjectItem from './project_index_item';
import { Link } from 'react-router-dom';


export class ProjectSearchIndex extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            render: false,
            projects: this.props.projects
        }
    }

    componentDidMount() {
        // debugger;
        
            // debugger
        
            // debugger
        setTimeout(function () {
        }.bind(this), 2000)
            this.setState({ render: true })
        // debugger;
        if (this.props.match.path.includes("search")){
            this.props.receiveAllProjects(this.props.match.params.query);
        }
           
        

        
        
    }

    componentDidUpdate(prevProps, prevState) {
        // debugger;
        if (prevProps.match.params.query !== this.props.match.params.query) {
            this.props.receiveAllProjects(this.props.match.params.query);
        }
    }
    

    render() {

        if (this.state.render === false) {
            return (
                <div className="loading-spinner">
                    <img className="spinner" src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif" />
                </div>
            )
        }
       
        if (this.props.projects.length === 0) return(
            <div>
                <h2 className="featured-title">Sorry, nothing matched that search!</h2>
            </div>
        );
        let projects = this.props.projects;
            return (
                <div className="over-grid">
                    
                    <div className="item-grid">
                        <div className="category-comp">
                            <h2 className="featured-title">Projects Matching Your Search</h2>
                            <div className="category-row">
                                {projects.map(project => (

                                    <div className="project-index-item">
                                        <ProjectItem
                                            key={project.id}
                                            project={project}
                                        />
                                    </div>



                                ))}
                            
                            </div>
                            
                        </div>
                    </div>
                </div>
            );
        } 
}




export default ProjectSearchIndex;
