# frozen_string_literal: true

module Admin
  module V1
    class ApiController < ApplicationController # :nodoc:
      include Authenticatable

      def render_error(message: nil, fields: nil, status: :unprocessable_entity)
        errors = {}
        errors['fields'] = fields if fields.present?
        errors['message'] = message if message.present?
        render json: { errors: }, status: status
      end
    end
  end
end
