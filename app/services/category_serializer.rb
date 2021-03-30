class CategorySerializer
    # DRY the .to_json code in categories_controller
    def initialize(category_object)
        @category = category_object
    end

    def to_serialized_json
        @category.to_json(:include => {
            :videos => {:except => [:created_at, :updated_at, :category_id]}
        }, :except => [:created_at, :updated_at])
    end
end