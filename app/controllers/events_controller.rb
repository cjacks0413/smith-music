class EventsController < ApplicationController

	before_action :can_create_event!
	#before_action :user_logged_in!

	def index

	end
end
