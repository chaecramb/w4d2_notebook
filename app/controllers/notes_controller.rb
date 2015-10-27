class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    Note.new(note_params).save
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

end