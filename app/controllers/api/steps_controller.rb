class Api::StepsController < ApplicationController

    def create 
        @step = Step.new(step_params)
        @step.project_key = project.id     
        if @step.save 
            render 'api/projects/new'
        else         
            render @step.errors.full_messages 
        end    
    end     
end
