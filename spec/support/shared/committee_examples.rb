# frozen_string_literal: true

shared_examples 'an api 200' do
  it 'pass schema validation' do
    subject
    expect(response).to have_http_status(:ok)
    assert_request_schema_confirm
    assert_response_schema_confirm(200)
  end
end
