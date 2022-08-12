class ReipesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @reipe = Reipe.new

  end
  def create
    @reipe = Reipe.new(reipe_params)
    @reipe.user/id = current_user.id
    @reipe.save
    redirect_to reipe_path(@reipe)
  end

  def edit
  end


  private
  def reipe_params
    params.require(reipe).permit(:title, :body, :image)
  end
end
