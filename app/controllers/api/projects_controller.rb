class Api::ProjectsController < ApplicationController

    def index 
        @projects = Project.all
    end  

    def show 
        @project = Project.find(params[:id])
    end  

    # def create 
    #     @project = Project.new(project_params)
    #     @project.author_id = current_user.id
    #     if @project.save 
    #         render :show 
    #     else   
    #         render :json @project.errors.full_messages 
    #     end  
    # end  

    def project_parmams 
        params.require(:project).permit(:description, :body, :materials)
    end
end
