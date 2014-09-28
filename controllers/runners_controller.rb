class RunnersController < ApplicationController

  layout "runner"

  def index

  end

  def new
    @runner = Runner.new
    @runners = Runner.all
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      redirect_to new_runner_path
    end
  end

  def show
    @runner = Runner.new
    @runner = Runner.find(params[:id])
  end

  def destroy
    @runner = Runner.find(params[:id])
    @runner.destroy
    redirect_to new_runner_path
  end

  private

  def runner_params
      params.require(:runner).permit(:firstname, :lastname, :address1, :address2, :city, :state, :zip, :phone, :school, :gender, :age)
  end

end
