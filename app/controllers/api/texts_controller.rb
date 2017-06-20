class Api::TextsController < ApplicationController
  before_action :set_place, only: %w"show update destroy"
  before_action :authenticate_user, only: %w"create update destroy"

  def index
    @texts = Text.all
  end

  def show
  end

  def create
    @text = Text.new(text_params)
    data = sobek_service.post(@text.body)
    @text.data = data

    if @text.save
      render :show, status: :created
    else
      render json: @text.errors, status: :unprocessable_entity
    end
  end

  def update
    if @text.update(text_params)
      render :show, status: :ok
    else
      render json: @text.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @place.destroy
    render :index
  end

  private

  def set_text
    @text = Text.find(params[:id])
  end

  def text_params
    params.require(:text).permit(:title, :description, :body)
  end

  def sobek_service
    SobekService.new
  end
end
