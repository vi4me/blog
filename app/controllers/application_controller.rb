class ApplicationController < ActionController::Base

  include Pundit
<<<<<<< HEAD
  
=======
  protect_from_forgery

>>>>>>> 06cd0324f54cfb69343eb7c5843d92332e5bc208
  protect_from_forgery with: :exception
  
end
