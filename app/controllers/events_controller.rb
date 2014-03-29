class EventsController < ApplicationController
<<<<<<< HEAD
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
	end 
	
	private

		def event_params
			params.require(:event).permit(:title, :start_time, :end_time, :student_id)
		end 
		
=======

	before_action :can_create_event!
	#before_action :user_logged_in!

	def index

	end
>>>>>>> bbc70b9168002e413cce08c7908a17464364552d
end
