class Api::StepsController < ApplicationController

    def new 
        @step = Step.new()
        @step.project_id = params[:project_id]
    end

    def create 
        @step = Step.new(step_params)   
        if !@step.save       
            render json: @step.errors.full_messages 
        end    
    end  
    
    def step_params
        params.require(:step).permit(:title, :body, :project_id)
    end
end
