import React from 'react'
import ProjectItem from './project_index_item';
import { Link } from 'react-router-dom';




export class ProjectIndex extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            render: false
        }
    }

    componentDidMount() {
        // debugger;
        if (this.props.location.pathname.includes("search")) {
            // debugger
            this.props.receiveAllProjects(this.props.match.params.query);
        } else {
        
        
        this.props.receiveAllProjects();
        this.props.receiveAllCategories();
        }
        setTimeout(function () {
            this.setState({ render: true })
        }.bind(this), 2000)
    }

    // componentDidUpdate(prevProps, prevState) {
    //     // debugger;
    //     if (prevProps.match.params.query !== this.props.match.params.query) {
    //         this.props.receiveAllProjects(this.props.match.params.query);
    //     }
    // }
    selectFromLures() {
        if (!this.props.projects) return null;
        const lureArr = [];
        const categories = this.props.categories;
        const projects = this.props.projects;
        let i = 0;
        while (lureArr.length < 4 && this.props.categories) {
            if (projects[i].category_id === categories[0].id) {
                lureArr.push(projects[i])
            }
            i++;
        };
        return lureArr
    }

    selectFromPoles() {
        if (!this.props.projects) return null;
        const poleArr = [];
        const categories = this.props.categories || {};
        const projects = this.props.projects || {};
        let i = 0;
        while (poleArr.length < 4 && this.props.categories) {
            if (projects[i].category_id === categories[1].id) {
                poleArr.push(projects[i])
            }
            i++;
        };
        return poleArr
    }
    selectUserPosts(){
        if (!this.props.projects) return null;
        const userPostArr = [];
        const projects = this.props.projects || {};
        let i = 0;
        while (userPostArr.length < 4 && i < projects.length) {

            if (projects[i].author_id === this.props.currentUser) {
                userPostArr.push(projects[i])
            }
            i++;
        };
        return userPostArr
    }

    render() {

        if (this.state.render === false) {
            return (
                <div className="loading-spinner">
                    <img className="spinner" src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif" />
                </div>
            )
        }
        if (this.props.projects.length === 0) return null;
        if (this.props.categories.length === 0) return null;
        const lures = this.selectFromLures();
        const poles = this.selectFromPoles();
        const userPosts = this.selectUserPosts();
        if (this.props.currentUser){
        return (
            <div className="styled-grid">
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
                
                <div className="item-grid">
                    <div className="category-comp">
                        <h2 className="featured-title">Todays Featured Fishables</h2>
                            <Link to={`/categories/${this.props.categories[0].id}`} className="index-category-title">Lures</Link>
                        <div className="category-row">
                            {/* <h2 className="index-category-title">Lures:</h2> */}
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
                            <Link to={`/categories/${this.props.categories[1].id}`} className="index-category-title">Poles</Link>
                        <div className="category-row">
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
                            <h2 className="index-category-title">Posts By You</h2>
                        <div className="category-row">
                            
                            {userPosts.map(post=> (

                                <div className="project-index-item">
                                    <ProjectItem
                                        key={post.id}
                                        project={post}
                                    />
                                </div>



                            ))}
                        </div>
                    </div>
                </div>
            </div>
        );
    } else {
        return(
            <div >
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
                        <Link to={`/categories/${this.props.categories[0].id}`} className="index-category-title">Lures</Link>
                    <div className="category-row">
                        {/* <h2 className="index-category-title">Lures:</h2> */}
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
                            <Link to={`/categories/${this.props.categories[1].id}`} className="index-category-title">Poles</Link>
                    <div className="category-row">
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
               
            </div >
        )
    }
}
}




export default ProjectIndex;
