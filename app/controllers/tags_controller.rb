class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    tag = Tag.create(tag_params)
    redirect_to(tags_path)
  end

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to(tags_path)
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    Tag.find(params[:id]).update(tag_params)
    redirect_to(tags_path)
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end