class Api::ProjectsController < ApplicationController

    def index 
        @projects = Project.all
        render 'api/projects/index'
    end  

    def show 
        @project = Project.find(params[:id])
    end  

    def edit 
        @project = Project.find(params[:id])
        @project.update_attributes(project_params)
        if @project.save 
            render :show 
        end 
    end 


    # def update 
        
        
    #     @project.update_attributes(project_params)
    #     if @project.save 
    #         render `api/projects` 
    #     end 
    # end

    def create 
        @project = Project.new(project_params)
        @project.author_id = current_user.id
        @project.number_of_likes = 0
        @project.category_id = 0 #delete this 

       
        if @project.save 
            render 'api/projects/edit'
        else   
            render ["Body or Title can't be blank"]
        end  
    end  

    def project_params 
        params.require(:project).permit(:description, :author_id, :number_of_likes, :materials, :category_id)
    end
end
