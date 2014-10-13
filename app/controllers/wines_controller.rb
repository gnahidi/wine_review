class WinesController < ApplicationController
  def index
  	@available_at = Time.now
  	@wines = Wine.all
  end

  def show
  end

  def edit
  end
end
