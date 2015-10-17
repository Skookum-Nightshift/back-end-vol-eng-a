class Api::OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
    render json: @organizations
  end
end
