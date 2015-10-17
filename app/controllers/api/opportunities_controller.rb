class Api::OpportunitiesController < ApplicationController
  def index
    @opportunities = Opportunity.all
    render json: @opportunities
  end

  def show
    @opportunity = Opportunity.find(params[:id])
    render json: @opportunity
  end

  def matches(tag_ids)
    @opportunities = Opportunity.finder(tag_ids)
    render json: @opportunities
  end
end
