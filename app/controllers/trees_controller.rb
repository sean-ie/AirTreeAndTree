class TreesController < ApplicationController

  before_action :find_tree, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @trees = Tree.all
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to trees_path
   else
     render :new
   end
  end

  def show
  end

  def update
    @tree.update(tree_params)
  end

  def destroy
    @tree.destroy
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :description, :price, :address, :number_of_guests)
  end

  def find_tree
    @tree = Tree.find(params[:id])
  end
end

