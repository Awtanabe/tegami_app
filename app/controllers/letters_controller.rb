class LettersController < ApplicationController
  before_action :authenticate_user!
  def new
    @letter = Letter.new
  end

  def confirm
    @letter = Letter.new(letter_params)
    render :new if @letter.invalid?
  end

  def create
    @letter = Letter.new(letter_params)
    render :new and return if params[:back] 
    if @letter.save
    else
    end
  end

  private
  def letter_params
    params.require(:letter).permit(:title, :body, :option).merge(user_id: current_user.id)
  end
end
