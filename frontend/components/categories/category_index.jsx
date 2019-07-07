import React from 'react'

class CategoryIndex extends React.Component {
    
    componentDidMount(){
        this.props.fetchCategories()
        
    };
    
    render() {
        const { categories }   = this.props;
        debugger;
        return (
        categories.map(category => (
            <div>
                <h2>{category.name}</h2>
                <h4>{category.description}</h4>
            </div>
        ))
            
        )
    }
}

export default CategoryIndex
