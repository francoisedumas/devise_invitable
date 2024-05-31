module MailAdapter
  class Brevo
    attr_accessor :template

    def initialize(variables:, template:)
      @variables = variables
      @template = template
    end

    def send_now
      api_instance.send_transac_email(email)
    end

    private

    def email
      ::SibApiV3Sdk::SendSmtpEmail.new(
        {
          to: [{ email: to_email, name: }],
          templateId: template,
          params:
        }
      )
    end

    def to_email
      raise NotImplementedError
    end

    def params
      raise NotImplementedError
    end

    def name
      "test user"
    end

    def api_instance
      ::SibApiV3Sdk::TransactionalEmailsApi.new
    end
  end
end
