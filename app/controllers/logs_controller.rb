class LogsController < ApplicationController
	before_action :set_wine

	def index
		@logs = @wine.logs.order('created_at desc')
	end

	def new
		@log = @wine.logs.new
	end

	def create
		@log = @wine.logs.new(log_params)
		if @log.save
			redirect_to wine_logs_path(@wine), notice: 'LogEntry saved!'
		else
			render :new
		end
	end

	private
	def set_wine
		@wine = Wine.find(params[:wine_id])
	end

	def log_params
		params.require(:log).permit(:rating, :name, :comments, :location, :tasted_on)
	end

end
