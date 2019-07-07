class Api::ProjectsController < ApplicationController

    def index 
        @projects = Project.all
        render 'api/projects/index'
    end  

    def show 
        @project = Project.find(params[:id])
    end  

    def create 
        @project = Project.new(project_params)
        @project.author_id = current_user.id
        @project.number_of_likes = 0
        if @project.save 
            render 'api/projects/show'
        else   
            render ["Body or Title can't be blank"]
        end  
    end  

    def project_parmams 
        params.require(:project).permit(:description, :body, :materials, :photo, :category_id)
    end
end
