class EventsController < ApplicationController
	def index
  	 	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  	 	@events = Event.all 
  	 	@events_by_date = @events.group_by(&:date)
	end 

	def new
		@event = Event.new
	end 

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to index
		else 
			render 'new'
		end
	end

	private

		def event_params
			params.require(:event).permit(:title, :start_time, :end_time, :student_id)
		end 
		
end
