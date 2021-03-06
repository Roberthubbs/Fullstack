# README
[fishables](https://fishables.herokuapp.com)
# Fishables is an app to look up projects related to fishing.  This includes categories such as building your own rod and lures.  

## Technologies: 
* `Ruby on Rails`
* Ruby Version 2.5.1 
* Rails Version 5.2.3 
* `Node`
* React 16.8.6
* Redux 4.01
* webpack 4.35.2
* webpack-cli 3.3.5
* `database`
* postgresql >= 0.18, < 2.0

## User capabilities: 
* Upload and like projects
* Search Projects by category 

![Home Page Image](https://user-images.githubusercontent.com/46801755/61147231-bd51a080-a490-11e9-84b9-374d9d9742ff.png)

## Issues and Solutions:
* Issue rendering index from category page.  Issue was solved with a render: false in the state:
* When entering index page from categories, all categories would not be received in time. Attempted solutions were a componentDidMount, changing location of function call, returning null if !projects.  


![create project image](https://user-images.githubusercontent.com/46801755/61147240-c2aeeb00-a490-11e9-89fb-f79c9faadd01.png)


![image_index](https://user-images.githubusercontent.com/46801755/61147759-01917080-a492-11e9-8d5f-ac4e61d43086.png)

* `this.state = {
            render: false
        }`
* ` setTimeout(function () {
            this.setState({ render: true })
        }.bind(this), 2000)`
        
        
* Issue creating new projects.  In order to create projects, they must first send a request to the backend to save a new id for the project, and are then edited.  Initial solution to this was loading page, that has now been corrected to push to edit page asynchronously.  
* `this.props.createProject(this.state).then((project) => {
            that.props.history.push(`/projects/${project.id}/edit`)
            }
        )`
        
   
 

