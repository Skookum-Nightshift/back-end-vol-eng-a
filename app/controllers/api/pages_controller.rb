class Api::PagesController < ApplicationController
  rescue_from ActionController::UnknownFormat, with: :raise_not_found

  def not_found
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/404", layout: false, status: :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end

  def raise_not_found
    render file: "#{Rails.root}/public/404", layout: false, status: :not_found
  end

end
