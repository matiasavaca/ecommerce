class ApplicationController < ActionController::Base
  include Authentication # incluye el concern authentication
  include Authorization # incluye el concern authorization
  include Language # incluye el concern language
  include Pagy::Backend
  include Error

  rescue_from ActiveRecord::RecordNotFound do
    redirect_to products_path, alert: t('.not_found')
  end
end
