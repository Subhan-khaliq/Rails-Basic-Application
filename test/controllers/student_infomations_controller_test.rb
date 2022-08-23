# frozen_string_literal: true

require 'test_helper'

class StudentInfomationsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get student_infomations_index_url
    assert_response :success
  end
end
