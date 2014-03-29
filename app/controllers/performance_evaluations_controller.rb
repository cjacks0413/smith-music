class PerformanceEvaluationsController < ApplicationController
  

  def new
  	    @performance = PerformanceEvaluation.new  
  end



	def index
		if current_user.role == 'student' 
			@performances = PerformanceEvaluation.find(:all, :conditions => { :student_firstname => current_user.firstname,
			 :student_lastname => current_user.lastname}) 
		end
		if current_user.role == 'teacher'
			@performances = PerformanceEvaluation.find(:all, :conditions => { :teacher_firstname => current_user.firstname,
			 :teacher_lastname => current_user.lastname}) 		
		end
	end


	def edit
		@performance = PerformanceEvaluation.find(params[:id])
	end

	def show
		@performance = PerformanceEvaluation.find(params[:id])
	end

	def destroy
	  	@performance = PerformanceEvaluation.find(params[:id])
	  	@performance.destroy
	  	redirect_to performance_evaluations_path
	end

	def create
	  	@performance = PerformanceEvaluation.new(performance_evaluation_params)
	  	if @performance.save
	  	redirect_to performance_evaluations_path
		else
		  	render 'new'
		end
	end

	def update
	  	@performance = PerformanceEvaluation.find(params[:id])
	  	if @performance.update(performance_evaluation_params)
			redirect_to @performance
		else
		  	render 'edit'
		end
	end




  private

  def performance_evaluation_params
    params.require(:performance_evaluation).permit(:teacher_firstname, :teacher_lastname, :student_firstname, :student_lastname, :lesson_name, :point, :comment)
  end


end
