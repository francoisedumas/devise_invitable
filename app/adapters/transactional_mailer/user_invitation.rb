module TransactionalMailer
  class UserInvitation < MailAdapter::Brevo
    private

    def params
      {
        invitor_name: @variables[:invitor_name],
        path: @variables[:path]
      }
    end

    def to_email
      @variables[:email]
    end

    def name
      @variables[:invitee_name]
    end
  end
end
