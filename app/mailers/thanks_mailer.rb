class ThanksMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanks_mailer.send_when_signup.subject
  #
  def send_when_signup(email, name)
    @user = name
    mail to: email, subject: '会員登録が完了しました。'
  end



end
