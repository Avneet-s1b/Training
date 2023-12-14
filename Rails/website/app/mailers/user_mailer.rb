class UserMailer < ApplicationMailer
    # default from: 'avneet.bhatia@berylsystems.com'
    default from: email_address_with_name('avneet.bhatia@berylsystems.com', 'Balwinder Singh')
    def welcome_email
        @user = params[:user]
        @url  = 'http://example.com/login'
        attachments.inline['pic1.png'] = File.read('/home/beryl/Documents/Training/Rails/website/app/assets/pic1.jpg')
        mail(to: email_address_with_name(@user.email,@user.name), subject: 'Welcome to My Web Site')
    end
end
