class UserMailer < ActionMailer::Base
  default from: 'testing.rails3421@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to FstMind!')
  end
end