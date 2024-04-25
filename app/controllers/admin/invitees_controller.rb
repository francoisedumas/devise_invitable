# frozen_string_literal: true

module Admin
  class InviteesController < ApplicationController
    def new
    end

    def create
    end

    private

    def email_params
      params.permit(:email)
    end
  end
end
