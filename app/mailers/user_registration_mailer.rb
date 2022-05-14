class UserRegistrationMailer < ApplicationMailer
  def email_instruction(email)
    @name = 'jackson'
    mail(to: email, subject: 'Aravicaへの登録ありがとうございます')
  end
end
