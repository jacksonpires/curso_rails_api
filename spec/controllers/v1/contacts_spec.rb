require 'rails_helper'

describe V1::ContactsController, type: :controller do

  it 'request index and return 406 NOT ACCEPTABLE' do
    get :index
    expect(response).to have_http_status(:not_acceptable)
  end

  it 'request index and return 200 OK' do
    request.accept = 'application/vnd.api+json'
    get :index
    expect(response).to have_http_status(:ok)
  end

  it 'GET v1/contacts/:id' do
    contact = Contact.first

    request.accept = 'application/vnd.api+json'
    get :show, params: { id: contact.id }

    response_body = JSON.parse(response.body)

    expect(response_body.fetch('data').fetch('id')).to eq(contact.id.to_s)
    expect(response_body.fetch('data').fetch('type')).to eq('contacts')
  end

end
