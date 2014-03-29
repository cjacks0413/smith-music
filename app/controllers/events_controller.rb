class EventsController < ApplicationController
	def index
  	 	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  	 	@events = Event.all 
  	 	@events_by_date = @events.group_by(&:start_time)
	end 

	def new
		@event = Event.new
	end 

	def create
		@user = current_user
		@event = @user.events.build(event_params)
		if @event.save
			redirect_to @event 
		else 
			render 'new'
		end
	end

	def show
		@event = Event.find(params[:id])

	end 

	def edit
		@event = Event.find(params[:id])
	end 
	
	def update
		@event = Event.find(params[:id])
	  	if @event.update(event_params)
			redirect_to @event
		else
		  	render 'edit'
		end
	end 
	private

		def event_params
			params.require(:event).permit(:title, :start_time, :end_time, :student_id)
		end 
		
end
