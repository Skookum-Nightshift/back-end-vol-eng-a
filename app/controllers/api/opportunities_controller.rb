class Api::OpportunitiesController < ApplicationController
  def index
    @opportunities = Opportunity.all
    render json: @opportunities
  end

  def show
    @opportunity = Opportunity.find(params[:id])
    render json: @opportunity
  end
end
