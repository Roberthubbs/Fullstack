import React from 'react'
import { Link } from 'react-router-dom';

class CategoryIndex extends React.Component {
    
    componentDidMount(){
        this.props.fetchCategories()
        
    };
    
    render() {
        const { categories }   = this.props;
        
        return (
        <div className="category-index-item-list"> 
            {categories.map(category => (
                <div className="category-index-item">
                <Link className="category-index-list"to={`categories/${category.id}`} >
                    <h2 className="category-title">{category.name}</h2>
                    <h4 className="category-description">{category.description}</h4>
                    
                </Link>
                </div>
            ))}
        </div>    
        )
    }
}

export default CategoryIndex
