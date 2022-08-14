class ReipesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @reipes =Reipe.all
  end

  def show
    @reipe = Reipe.find(params[:id])
  end

  def new
    @reipe = Reipe.new

  end
  def create
    @reipe = Reipe.new(reipe_params)
    @reipe.user_id = current_user.id
    if @reipe.save
      redirect_to reipe_path(@reipe)
    else
      render :new
    end
  end

  def edit
    @reipe = Reipe.find(params[:id])
    if @reipe.user != current_user
      redirect_to reipes_path,alert: '不正なアクセスです。'
    end
  end
  def update
    @reipe = Reipe.find(params[:id])
    @reipe.update(reipe_params)
    redirect_to reipe_path(@reipe)
  end
  def delete
    @reipe = Reipe.find(params[:id])
    @reipe.destroy
    redirect_to reipes_path
  end

  private
  def reipe_params
    params.require(:reipe).permit(:title, :body, :image)
  end
end
