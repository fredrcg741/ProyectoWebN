class ReviewsController < ApplicationController
  def index
  end

  def manager_review
	@users = User.all

  end
end
