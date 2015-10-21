class Api::V1::OpportunitiesController < ApplicationController
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

  def matches(tag_ary)
    @opportunities = find_opps(tag_ary)
    render json: @opportunities
  end
end
