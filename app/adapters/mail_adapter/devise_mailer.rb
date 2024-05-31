module MailAdapter
  class DeviseMailer < Devise::Mailer
    include Rails.application.routes.url_helpers

    # Override Deliver an invitation email from Devise Invitable
    def invitation_instructions(record, token, _opts = {})
      invitable_link = accept_user_invitation_url(invitation_token: token)

      variables = {
        invitor_name: record.invited_by.full_name,
        invitee_name: record.full_name,
        email: record.email,
        path: invitable_link
      }

      ::TransactionalMailer::UserInvitation.new(variables:, template: 2).send_now
    end
  end
end
