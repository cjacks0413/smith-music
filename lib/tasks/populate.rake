namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'rubygems'
    require 'populator'
    require 'faker'
    
    [Performance_Evaluation].each(&:delete_all)
    
    Performance_Evaluation.populate 20 do |pe|
      pe.teacher_firstname = Mountain
      pe.teacher_lastname = Dew 
      pe.student_firstname = Compost  
      pe.student_lastname =  Able 
      pe.lesson_name = "Introduction to Mozart"
      pe.point = [1..10]
      pe.comment = Populator.sentences(2..10)
    end
  end
end