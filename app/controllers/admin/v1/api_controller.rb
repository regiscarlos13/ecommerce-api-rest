# frozen_string_literal: true

module Admin
  module V1
    class ApiController < ApplicationController # :nodoc:
      class ForbiddenAccess < StandardError; end
      include Authenticatable
      before_action :restrict_access_for_admin!

      include SimpleErrorRenderable
      self.simple_error_partial = 'shared/simple_error'

      rescue_from ForbiddenAccess do
        render_error(message: 'Forbidden access', status: :forbidden)
      end

      private

      def restrict_access_for_admin!
        raise ForbiddenAccess unless current_user.admin?
      end
    end
  end
end
