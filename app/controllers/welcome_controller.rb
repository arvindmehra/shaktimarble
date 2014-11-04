class WelcomeController <  ApplicationController

  def index
    render  :layout => "home_page"
  end

  def contact

  end


  def send_email
    name = params[:name]
    email = params[:email]
    mobile = params[:mobile]
    description = params[:description]
    ModelMailer.new_notification(name,email,mobile,description).deliver
  end

end