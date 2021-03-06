class Api::V1::OpportunitiesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @opportunities = Opportunity.all
    render json: @opportunities
  end

  def show
    @opportunity = Opportunity.find(params[:id])
    render json: @opportunity
  end

  def tagged
    if params[:tag].present?
      @opportunities = Opportunity.tagged_with(params[:tag])
    else
      @opportunities = Opportunity.postall
    end
    render json: @opportunities
  end

  def matches
    @opportunities = Opportunity.find_opps(params[:tags])
    render json: @opportunities, each_serializer: Api::V1::OpportunitySerializer, root: nil
  end
end
