class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: CategorySerializer.new(categories).to_serialized_json
    end

    def create
        # create new category
        #  do this before testing front end fetch
        category = Category.create(category_params)
        render json: category
    end
    
    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: CategorySerializer.new(category).to_serialized_json
        else
            render json: {message: 'Category does not exist'}
        end
    end

    def update
        category.update(category_params)
        render json: category
    end

    def destroy
        category = Category.create(category_params)
        category.delete
        render json: {category_id: category.id}
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end
end
