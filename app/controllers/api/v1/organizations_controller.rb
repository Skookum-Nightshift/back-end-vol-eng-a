class Api::V1::OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
    render json: @organizations
  end

  def show
    @organization = Organization.find(params[:id])
    render json: @organization
  end

  def show_opps
    @opportunities = Organization.find(params[:id]).opportunities
    render json: @opportunities
  end

  def show_orgs
    @organizations = Category.find(params[:id]).organizations
    render json: @organizations
  end
end
