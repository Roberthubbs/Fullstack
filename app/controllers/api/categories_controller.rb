class Api::CategoriesController < ApplicationController
    
    def index 
        @categories = Category.all 
        render 'api/categories'
        
    end 

    def show 
        @category = Category.find(params[:id])
        render 'api/categories/category'
    end
end
