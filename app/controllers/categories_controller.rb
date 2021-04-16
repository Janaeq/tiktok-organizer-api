class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

    def create
        category = Category.create(category_params)
        if category
            render json: category
        else
            render json: {error: category.errors.full_messages.to_sentence}
        end
    end
    
    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category
        else
            render json: {message: 'Category does not exist'}
        end
    end

    def destroy
        category = Category.find_by(id: params[:id])
        category.delete
        render json: {message: "Successfully Deleted"}
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end
end
