class WelcomeController < ApplicationController
  def index
    @message = "This massage from WelcomeController"
    @time = Time.now.strftime("%A, %B %d, %Y %H:%M:%S")
  end
end
