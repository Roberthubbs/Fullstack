import React from 'react';
import { Link } from 'react-router-dom';
class CategoryShow extends React.Component {
    
    componentDidMount() {

        this.props.fetchCategory(this.props.match.params.categoryId)

    }
    
    render() {
      
        const category  = this.props.category;
        const projects = this.props.projects;

        if (!category) return null;
        
        return (
            <div className="category-show-large">
            {(category.name === 'Lures') ?
                
                <div className="catbackimg">
                    <img className="proj-back-img" src="GiantLureForBackground.jpg"/>
                </div> : 
                <div className="catbackimg">
                    <img className="proj-back-img" src="fishingPoleBack.jpg" />
                </div>  

            }
            <h2 className="category-show-title">Projects involving: {category.name}</h2>
            <div className="item-show-grid"> 
            {projects.map(project => (
              
                <div className="project-items">
                    <Link className="item-link" to={`/projects/${project.id}`}>
                        <img className="lead-project-photo" src={project.photo} />
                        <div className="link-div">
                            <h6 className="project-link">{project.description}</h6>
                        </div>
                    </Link>
                </div>
            
            ))}
            </div>
            </div>
        )         
        
        
    }
}

export default CategoryShow