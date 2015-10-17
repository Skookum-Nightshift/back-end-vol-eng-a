class Api::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def show_orgs
    @organizations = Category.find(params[:id]).organizations
    render json: @organizations
  end
end
