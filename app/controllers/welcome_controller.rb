class WelcomeController <  ApplicationController

  def index
    render  :layout => "home_page"
  end


  def send_email
    name = params[:name]
    email = params[:email]
    mobile = params[:mobile]
    ModelMailer.new_notification(name,email,mobile).deliver
  end

end