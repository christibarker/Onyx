class EmailController < ApplicationController
require 'pony'
  def index
  	# Pony.mail(:to => 'you@example.com', :via => :smtp) # sends via SMTP
  	# Pony.mail(:to => 'you@example.com', :from => 'me@example.com', :subject => 'hi', :body => 'Hello there.')
  	Pony.mail(:to => 'kaco7777@gmail.com', :from => 'contact_params(:email)', :subject => 'contact_params(:subject)', :body => 'contact_params(:message)')
  end

	private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :subject, :message)
  end
end
