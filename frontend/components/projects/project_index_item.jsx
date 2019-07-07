import React from 'react'
import { withRouter } from 'react-router-dom'
import { Link } from 'react-router-dom'

class ProjectItem extends React.Component {
    // constructor(props){
    //     super(props)
    //     this.state = {
    //         imageUrl: '',
    //         imageFile: null
    //     }
    // }
    // extractPhoto(e){
    //     const reader = new FileReader();
    //     const photo = this.props.project.imageUrl;
    //     debugger;
    //     reader.onloadend = () =>
    //         this.setState({ imageUrl: reader.result, imageFile: photo});

    //     if(photo) {
    //         reader.readAsDataURL(imageUrl);
    //     } else {
    //     this.setState({ imageUrl: "", imageFile: null });
    // }


    
    // handleClick(){
    //     const projId = this.props.project.id;
    //     this.state.history.push(`projects/${projId}`)
    // }
    
   
    render() {
        
        const { description, body, materials } = this.props.project;
        
        return (
            <div>
            <div className="project-items">
                <Link className="item-link"to={`projects/${this.props.project.id}`}>
                    <img className="lead-project-photo" src={this.props.project.photo} />
                    <div className="link-div">
                        <h6 className="project-link">{description}</h6>
                    </div>
                </Link>
            
            </div>
            </div>
        )
    };
}

export default withRouter(ProjectItem);
