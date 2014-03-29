class Event < ActiveRecord::Base
	belongs_to :user
	
	# scope :same_day_events, lambda |date| { Event.where("date(start_time) = ?", date) }

	# def events_by_date
	# 	@events = Event.all 
 #    	@events_by_date = @events.group_by(&:start_time)
 #    end 
    
end
