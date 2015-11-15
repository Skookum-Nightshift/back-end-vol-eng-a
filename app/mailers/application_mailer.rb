class ApplicationMailer < ActionMailer::Base
  default from: "Hasten <no-reply@hasten.io>"

  def welcome_email(params)
    @url  = "http://example.com/login"
    @firsname = params[:firstname]
    mail(to: params[:email], subject: "Welcome to My Awesome Site")
  end

end
