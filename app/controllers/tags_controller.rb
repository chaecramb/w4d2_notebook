class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to(tags_path)
  end

  def edit
    @tag = Tag.find(params[:id])
  end

end