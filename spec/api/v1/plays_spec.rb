# frozen_string_literal: true

describe V1::Plays, type: :request do
  context 'when GET /api/v1/plays' do
    before { FactoryBot.create_list(:play, 3) }

    it 'returns list of existing plays' do
      get '/api/v1/plays'

      expect(response.status).to eq(200)
      expect(Oj.load(response.body).size).to eq(3)
    end
  end

  context 'when POST /api/v1/plays/create' do
    let(:params) { build(:play).attributes.except('id', 'created_at', 'updated_at') }

    it 'returns 201 status' do
      post '/api/v1/plays', params: params

      expect(response.status).to eq 201
    end

    it 'creates a play' do
      expect { post '/api/v1/plays', params: params }.to change(Play, :count).by(1)
    end
  end

  context 'when DELETE /api/v1/plays/' do
    let!(:play)    { create(:play) }
    let!(:params)  { play.attributes.except('id', 'created_at', 'updated_at') }

    it 'deletes play' do
      expect { delete '/api/v1/plays/destroy' }.to change(Play, :count).by(-1)
    end

    it 'returns 204 status' do
      delete '/api/v1/plays/destroy'

      expect(response.status).to eq 204
    end
  end
end
