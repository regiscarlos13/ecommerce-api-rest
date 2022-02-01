# frozen_string_literal: true

module Admin
  module V1
    class CategoriesController < ApiController # :nodoc:
      def index
        @categories = Category.all
      end

      def create
        @category = Category.new
        @category.attributes = category_params

        save_category!
      end

      def category_params
        return {} unless params.key?(:category)

        params.require(:category).permit(:id, :name)
      end

      def save_category!
        @category.save!
        render :show
      rescue StandardError
        render_error(fields: @category.errors.messages)
      end
    end
  end
end
