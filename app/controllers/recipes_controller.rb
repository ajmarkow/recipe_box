class RecipesController < ApplicationController
  def index
    @Recipes = Recipe.all.order(rating: :desc)
    # Code for listing all recipes goes here.
  end

  def new
    @recipe = Recipe.new
    render :new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
    # Code for creating a new recipe goes here.
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render :edit
    # Code for edit recipe form goes here.
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.find(@recipe.id)
    render :show
    # Code for showing a single recipe goes here.
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
    # Code for updating an recipe goes here.
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
    # Code for deleting an recipe goes here.
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :category, :rating, :ingredients, :instruction)
  end
end
