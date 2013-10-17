class UserMailer < ActionMailer::Base
  default from: "no-reply@myportfolio.com"

  layout 'email'

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "#{user.email}, welcome to my portfolio")
  end

end
