# frozen_string_literal: true

module Admin
  class InviteesController < ApplicationController
    def new
    end

    def create
      User.invite!(email_params, current_user)
      redirect_to admin_users_path
    end

    private

    def email_params
      params.permit(:email)
    end
  end
end
