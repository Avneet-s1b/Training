class UserMailer < ApplicationMailer
    default from: 'avneet.bhatia@berylsystems.com'

    def welcome_email
        @user = params[:user]
        @url  = 'http://example.com/login'
        attachments.inline['pic1.png'] = File.read('/home/beryl/Documents/Training/Rails/website/app/assets/pic1.jpg')
        mail(to: @user.email, subject: 'Welcome to My Web Site')
    end
end
