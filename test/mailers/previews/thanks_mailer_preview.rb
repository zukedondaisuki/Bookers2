# Preview all emails at http://localhost:3000/rails/mailers/thanks_mailer
class ThanksMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/thanks_mailer/send_when_signup
  def send_when_signup
    ThanksMailer.send_when_signup
  end

end
