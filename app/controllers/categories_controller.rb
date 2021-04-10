class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: CategorySerializer.new(categories).to_serialized_json
    end

    def create
        category = Category.create(category_params)
        if category.save
            render json: category
        else
            render json: {error: category.errors.full_messages.to_sentence}
        end
    end
    
    def show
        category = Category.find_by(id: params[:id])
        if category.save
            render json: CategorySerializer.new(category).to_serialized_json
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
