class ApplicationMailer < ActionMailer::Base
  default from: "Hasten <no-reply@hasten.io>", to: "UWAspires@gmail.com"

  def welcome_email(params)
    @firsname = params[:firstname]
    mail(to: params[:email], subject: "Thanks for Connectiong!")
  end

end
