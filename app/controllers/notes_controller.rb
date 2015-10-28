class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
    @tag = Tag.new
  end

  def create
    note = Note.new(note_params)
    note.tags << Tag.create_if_unique(tag_params) unless tag_params[:name].empty?
    note.save
    redirect_to(notes_path)
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to(notes_path)
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    Note.find(params[:id]).update(note_params)
    redirect_to(notes_path)
  end
  private

  def note_params
    params.require(:note).permit(:title, :note)
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

end