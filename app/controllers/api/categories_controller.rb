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
    @category = Category.find(params[:id])
    @organizations = @category.organizations
    render json: @organizations
  end
end
