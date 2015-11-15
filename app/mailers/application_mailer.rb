class ApplicationMailer < ActionMailer::Base
  default from: "Hasten <no-reply@hasten.io>"

  def welcome_email(params)
    @firstname = params[:firstname]
    @organization = params[:organization_name]
    @opportunity = params[:opportunity_name]
    mail(to: params[:email], subject: "Thanks for Connecting!")
  end

end
