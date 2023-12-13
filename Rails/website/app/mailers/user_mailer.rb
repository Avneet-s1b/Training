class UserMailer < ApplicationMailer
    default from: 'avneet.bhatia@berylsystems.com'

    def welcome_email
        @user = params[:user]
        @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Welcome to My Web Site')
    end
end
