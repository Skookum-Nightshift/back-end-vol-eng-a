class API::V1::BaseController < ApplicationController
  require 'proof'

  skip_before_action :verify_authenticity_token

  respond_to :json

end
