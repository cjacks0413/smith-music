class ProgressController < ApplicationController


  def index
  if current_user?
  	@performances = PerformanceEvaluation.find(:all, :conditions => { :student_firstname => current_user.firstname,
			 :student_lastname => current_user.lastname}) 
  	@a = []
  	i = 0
  	while i < 11
  		@a[i] = 0
  		i+=1
  	end
  @performances.each do |performance|
  	 	if performance.point == 10

  	 		@a[10]+= 1
  	 	
  	 	elsif performance.point == 9

  	 		@a[9]+= 1

  	 	elsif performance.point == 8
  	 		@a[8]+= 1


  	 	elsif performance.point == 7

  	 		@a[7]+= 1

  	 	elsif performance.point == 6
  	 		@a[6]+= 1


  	 	elsif performance.point == 5
  	 		@a[5]+= 1


  	 	elsif performance.point == 4
  	 		@a[4]+= 1


  	 	elsif performance.point == 3

  	 		@a[3]+= 1

  	 	elsif performance.point == 2
  	 		@a[2]+=1


  	 	elsif performance.point == 1

  	 		@a[1]+=1

  	 	else

  	 		@a[10]+=1

		end
	end

	
  	#@progress_chart = Gchart.pie(:data => [ [10],@a[9],@a[8],@a[7],@a[6],@a[5],@a[4],@a[3],@a[2],@a[1],@a[0]])




 	end 
  end





end
