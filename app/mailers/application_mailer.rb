# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: "francois.devtech@gmail.com"
  layout "mailer"
end
