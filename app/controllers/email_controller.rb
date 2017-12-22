class EmailController < ApplicationController
require 'pony'
  def index
  	Pony.mail(:to => 'kaco7777@gmail.com', :from => params[:email], :subject => params[:subject], :body => params[:message])
  end

	# private

 #  def contact_params
 #    params.require(:contact).permit(:first_name, :last_name, :email, :subject, :message)
 #  end
end
