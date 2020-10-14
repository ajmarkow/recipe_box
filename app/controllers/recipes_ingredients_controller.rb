class RecipesIngredientsController < ApplicationController
  def index
    # Code for listing all recipes goes here.
  end

  def new
    @recipe = Recipe.new
    render :new
  end

  def create
    # Code for creating a new recipe goes here.
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render :edit
    # Code for edit recipe form goes here.
    # Code for edit recipe form goes here.
  end

  def show
    # Code for showing a single recipe goes here.
  end

  def update
    # Code for updating an recipe goes here.
  end

  def destroy
    # Code for deleting an recipe goes here.
  end
end
