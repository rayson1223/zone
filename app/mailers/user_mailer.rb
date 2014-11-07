class UserMailer < ActionMailer::Base
  default from: "no-reply@zone.com"

  def welcome_email(user)
    @user = user
    @url = login_url

    mail( to: user.email, subject: 'Thanks for registering')
  end
end
