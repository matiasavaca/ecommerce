class ApplicationController < ActionController::Base
  include Authentication # incluye el concern authentication
  include Authorization # incluye el concern authorization
  include Language # incluye el concern language
  include Pagy::Backend

end
