class NotifierMailer < ApplicationMailer
  def simple_message(recipient)
    mail(
      to: recipient,
      subject: "Any subject you want"
    )
  end
end
