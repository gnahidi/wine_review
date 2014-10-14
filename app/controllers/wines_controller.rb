class WinesController < ApplicationController
before_action :set_wine, only: [:show, :edit, :update, :destroy]

def set_wine
	@wine = Wine.find(params[:id])
end

 #Homework 2
  def index
  	@available_at = Time.now
  	@wines = Wine.order(:name).page(params[:page])

  	flash[:notice]="My Homework is due on October 16, 2014"
  	flash[:alert]="A Major snow storm on our way"
  end

 #Homework 2
  def show
  	
  end

#Homework 3
  def edit
  	
  end

#Homework 3
 def update
	@wine = Wine.find(params[:id])
	if @wine.update(wine_params)
		redirect_to @wine, notice: "#{@wine.name} was updated!"
	else
		render :new
	end

 end

#Homework 3
def destroy
	@wine.destroy
	redirect_to wines_url
end

#Homework 3
def new
	@wine = Wine.new
end

#Homework 3
def create
	@wine = Wine.new(wine_params)
	if @wine.save
		redirect_to @wine, notice: "#{@wine.name} was created!"
	else
		render :new
	end
end


def wine_params
	params.require(:wine).permit(:name, :winery, :country, :year)
end

end
