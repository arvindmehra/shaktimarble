class ModelMailer < ActionMailer::Base
  default from: "postmaster@sandbox7237e9fd929349b28022d826269d0042.mailgun.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_notification(name,email,mobile,description)
    @name = name
    @email = email
    @mobile = mobile
    @description = description
    mail to: "bloomberg490@gmail.com, dineshcharkha@gmail.com ", subject: "Query From Super White Marble"
  end
end
