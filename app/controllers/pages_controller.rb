class PagesController < ApplicationController
  def index
    if !logged_in?
      redirect_to root_path
    end
  end

  def about_us
  end

  def faq
  end

  def tos
  end

  def contact_us
  end
end
