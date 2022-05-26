class ListsController < ApplicationController
  before_action :get_list, only: [:show]
  def index
    @lists = List.all
  end

  def show
    # raise
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def get_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
