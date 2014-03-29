class EventsController < ApplicationController
	def index
  	 	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  	 	@events = Event.all 
  	 	@events_by_date = @events.group_by(&:date)
	end 

end
