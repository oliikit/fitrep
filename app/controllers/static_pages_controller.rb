class StaticPagesController < ApplicationController
  layout "home"
  layout "application"

  def home
    render :layout => "home"
  end

  def news
    render :layout => "application"
  end

end
