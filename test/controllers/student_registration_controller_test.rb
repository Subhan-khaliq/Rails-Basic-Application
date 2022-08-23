# frozen_string_literal: true

require 'test_helper'

class StudentRegistrationControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get student_registration_index_url
    assert_response :success
  end
end
