# frozen_string_literal: true

module Admin
  module V1
    class HomeController < ApplicationController # :nodoc:
      def index
        render json: { message: 'Deu Certo' }
      end
    end
  end
end
