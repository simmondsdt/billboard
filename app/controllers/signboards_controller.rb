class SignboardsController < ApplicationController
  before_action :set_signboard, except: [:index, :new, :create]

  def index
    @signboards = Signboard.all
  end

  def show
  end

  def new
    @signboard = Signboard.new
  end

  def create
    @signboard = Signboard.new(signboard_params)
    if @signboard.save
      redirect_to signboard_path(@signboard)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @signboard.update(signboard_params)
      redirect_to signboard_path(@signboard)
    else
      render :edit
    end
  end

  def destroy
    @signboard.destroy
    redirect_to :index
  end

  private
    def signboard_params
      params.require(:signboard).permit(:name, :total)
    end

    def set_signboard
      @signboard = Signboard.find(params[:id])
    end
end
