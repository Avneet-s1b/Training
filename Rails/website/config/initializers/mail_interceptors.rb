class SandboxEmailInterceptor
    def self.delivering_email(message)
        message.subject = "Intercepted: #{message.subject}"
        message.to << "avneetsinghwork7@gmail.com"
    end
end

Rails.application.configure do
    if Rails.env.staging?
      config.action_mailer.interceptors = %w[SandboxEmailInterceptor]
    end
end