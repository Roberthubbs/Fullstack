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
        # @project.update_attributes(project_params)
        # if @project.save 
        #     render :show 
        # end 
    end 


    def update 
       
         @project = Project.find(params[:id])
        
       
        
        # @project.photo.attach(io: project_params[:photo], filename: params[:filename])
        
        if @project.photo
            @project.photo.attach(project_params[:photo])
       
        end
        if  @project.update_attributes(project_params)
            render `api/projects` 
        end 
    end

    def create 
        # photo1 = open("https://fishables-seed.s3-us-west-1.amazonaws.com/lures-hardbaits.jpg")
        
        @project = Project.new(project_params)
        
        @project.author_id = current_user.id
        @project.number_of_likes = 0
        @project.category_id = 0 #delete this 

        # if @project.photo
        #     @project.picture.attach(project_params[:photo])
       
        # end
       
        if @project.save 
            render 'api/projects/update'
        else   
            render json: @project.errors.full_messages
        end  
    end  

    def destroy 
        project = Project.find(params[:id])
        project_id = project.id
        project.destroy
        render json: {id: project_id}
    end 
    
    def project_params 
        # params.require(:project).permit(:description, :author_id, :number_of_likes, :materials, :category_id, :photo)
        params.require(:project).permit(:description, :author_id, :number_of_likes, :materials, :category_id, :photo)
    end
    def create_params 
        # params.require(:project).permit(:description, :author_id, :number_of_likes, :materials, :category_id, :photo)
        params.fetch(:project, {}).permit(:description, :author_id, :number_of_likes, :materials, :category_id)
    end
end
