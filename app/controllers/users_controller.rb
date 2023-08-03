class UsersController < ApplicationController
  skip_before_action :protect_pages
  def show
    @user = User.find_by!(username: params[:username])
    # el FindProducts esta en querys find_products.rb
  end
end
