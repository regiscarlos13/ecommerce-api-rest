# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::V1::Homes', type: :request do
  describe 'GET /index' do
    it 'Get page Home Index' do
      get '/admin/v1/home'
    end
  end
end
