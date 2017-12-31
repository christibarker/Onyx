class WorkshopsController < ApplicationController
	def index
		@lessons = Lesson.all
		@workshop = Lesson.find(params[:id, :workshop])
	end
end
 