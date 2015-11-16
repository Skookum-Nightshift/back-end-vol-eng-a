class ApplicationMailer < ActionMailer::Base
  default from: "UWCCAspires <UWCCAspires@gmail.com>", to: "UWCCAspires <UWCCAspires@gmail.com>"

  def welcome_email(params)
    @firstname = params[:firstname].capitalize
    @organization = params[:organization_name]
    @opportunity = params[:opportunity_name]
    mail(to: params[:email], subject: "Thanks for Connecting!")
  end

end
