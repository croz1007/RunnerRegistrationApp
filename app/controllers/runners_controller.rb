class RunnersController < ApplicationController

  before_action :make_runner, only: [:index, :new, :show]
  layout "runner"

  def index
    @title = "- Home"
  end

  def new
    @title = "- Add a Runner"
    @runners = Runner.all
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      redirect_to new_runner_path
    end
  end

  def show
    @runner = Runner.find(params[:id])
    @title = "- " + @runner['firstname'] + ' ' + @runner['lastname']
  end

  def destroy
    @runner = Runner.find(params[:id])
    @runner.destroy
    redirect_to new_runner_path
  end

  def make_runner
    @runner = Runner.new
  end

  private

  def runner_params
      params.require(:runner).permit(:firstname, :lastname, :address1, :address2, :city, :state, :zip, :phone, :school, :gender, :age)
  end

end
