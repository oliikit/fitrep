class StaticPagesController < ApplicationController
  layout "home"

  def home
    render :layout => "home"
  end

end
