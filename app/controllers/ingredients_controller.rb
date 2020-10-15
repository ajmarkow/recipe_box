class IngredientsController < ApplicationController
  def index
    @Ingredients = Ingredient.all.order(quantity: :desc)
    # Code for listing all ingredients goes here.
  end

  def new
    # Code for new ingredient form goes here.
    @ingredient = Ingredient.new
    render :new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
    # Code for creating a new ingredient goes here.
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    render :edit
    # Code for edit ingredient form goes here.
    # Code for edit ingredient form goes here.
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @recipe = Recipe.find(params[:id])
    render :show
    # Code for showing a single ingredient goes here.
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path
    else
      render :edit
    end
    # Code for updating an ingredient goes here.
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredients_path
    # Code for deleting an ingredient goes here.
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :recipe_id)
  end
end
