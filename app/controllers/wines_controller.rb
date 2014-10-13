class WinesController < ApplicationController
  def index
  	render :index
  	@available_at = Time.now
  end
end