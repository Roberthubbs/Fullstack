import React from 'react'
import ProjectItem from './project_index_item';
import { Link } from 'react-router-dom';

import { receiveAllProjects } from '../../actions/project_action';



export class ProjectIndex extends React.Component {
    // constructor(props){
    //     super(props)
    //     this.state = this.projects;
    // }

    componentDidMount(){
    
        this.props.receiveAllProjects();
        this.props.receiveAllCategories();
    }
   
    
    selectFromLures(){
        if (!this.props.projects) return null;
       const lureArr = [];
       const categories  = this.props.categories || {};
        const projects  = this.props.projects || {};
       let i = 0;
       while (lureArr.length < 5 && this.props.categories){
           
            if (projects[i].category_id === categories[0].id){
                lureArr.push(projects[i])
            }
            i++;
       };
       return lureArr
    }
    
    selectFromPoles(){
        if (!this.props.projects) return null;
       
       const poleArr = [];
       const categories  = this.props.categories || {};
        const projects  = this.props.projects || {};
       let i = 0;
       while (poleArr.length < 5 && this.props.categories){
           
            if (projects[i].category_id === categories[1].id){
                poleArr.push(projects[i])
            }
            i++;
       };
       return poleArr
    }
    
    render() {
       
        if (this.props.projects.length === 0) return null;
        if (this.props.categories.length === 0) return null;
        const lures = this.selectFromLures();
        const poles = this.selectFromPoles();
        return (
            <div>
                <div>
                <img className="background-image-index" src="SurfFishing.gif" />
                </div>
                <div className="over-image">
                    <h1>YOURS FOR THE FISHING</h1>
                </div>
                <div className="over-image-p">
                    <p>Fishables is a community for you to share and learn tricks for fishing.  Explore, Share, and make yourself a better angler today</p>
                </div>
            <div className="index-constants">
                    
                
                <div className="step-by-step">
                    <h1 className="first-index-constant">Step-By-Step</h1>
                    <p className="index-con">
                        We teach you how to make any and all things fishing.  From cold mountain streams to vast oceans we're there for you.
                    </p>
                </div>
                <div className="made-by-you">
                    <h1 className="second-index-constant">Made By You</h1>
                    <p className="index-con">
                        Not only does Fishables gives the ability to learn new skills.  You have skills of your own to share, and we've got the platform to do it.
                    </p>
                </div>
                <div className="a-happy-place">
                    <h1 className="third-index-constant">A Happy Place</h1>
                    <p className="right-index-con">
                        Fishing can be anywhere from exhilarating to calming.  Whatever the case, however seriously you angle, fishables is there to make it more enjoyable.
                    </p>
                </div>
               
            </div>
            {/* <div className="item-grid">
            {projects.map(project => (
                
                <div className="project-index-item">
                    <ProjectItem 
                    key={project.id}
                    project={project}
                    />
                </div>
            
                    
                
            ))}
                </div>
           </div> */}
            <div className="item-grid">
            <div className="category-comp">
            <h2 className="featured-title">Todays Featured Fishables</h2>
            <div className="category-row">
                {/* <h2 className="index-category-title">Lures:</h2> */}
            <Link to={`/categories/${this.props.categories[0].id}`} className="index-category-title">Lures:</Link>
                <br />
                {lures.map(lure => (
                    
                    <div className="project-index-item">
                        <ProjectItem 
                        key={lure.id}
                        project={lure}
                        />
                    </div>
                
                        
                    
                ))}
            </div>
            <div className="category-row">
                <h2 className="index-category-title">Poles:</h2>
                    <br />
                        {poles.map(pole => (

                            <div className="project-index-item">
                                <ProjectItem
                                    key={pole.id}
                                    project={pole}
                                />
                            </div>



                        ))}
                </div>
                </div>
                </div>
           </div>
        );
    };
}


export default ProjectIndex;