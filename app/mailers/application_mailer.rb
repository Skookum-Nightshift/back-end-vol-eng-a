class ApplicationMailer < ActionMailer::Base
  default from: "UWCCAspires <UWCCAspires@gmail.com>"

  def welcome_email(params)
    @firstname = params[:firstname].capitalize
    @organization = params[:organization_name]
    @opportunity = params[:opportunity_name]
    @org_email = params[:organization_email]
    mail(to: params[:email], subject: "Thanks for Connecting!",
      bcc: ["UWAspires@gmail.com"]
  end

end
