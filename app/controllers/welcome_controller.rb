class WelcomeController <  ApplicationController

  def index
  end


  def send_email
    name = params[:name]
    email = params[:email]
    mobile = params[:mobile]
    ModelMailer.new_notification(name,email,mobile).deliver
  end

end