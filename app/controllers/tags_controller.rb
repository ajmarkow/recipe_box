class TagsController < ApplicationController
  def index
    # Code for listing all tags goes here.
  end

  def new
    @tag = Tag.new
    render :new
  end

  def create
    # Code for creating a new tag goes here.
  end

  def edit
    # Code for edit tag form goes here.
  end

  def show
    # Code for showing a single tag goes here.
  end

  def update
    # Code for updating an tag goes here.
  end

  def destroy
    # Code for deleting an tag goes here.
  end
end
