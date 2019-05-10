class RecipesController < ApiController
  # GET /recipes
  def index
    @recipes = Recipe.select("id, title").all
    render json: @recipes.to_json
  end

  # GET /recipes/:id
  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe.to_json(:include => { :ingredients => { :only => [:id, :description] }})
  end
end