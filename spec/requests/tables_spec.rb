require 'rails_helper'

RSpec.describe 'Tables', type: :request do
  describe '#index' do
    before do
      create_list(:table, 10)
    end
    it 'returns a list of tables', openapi: {
      tags: ['てーぶるのいんでっくす'],
      description: 'ここに説明入ります'
    } do
      get '/api/v1/tables', params: { page: '1', per: '10' }, headers: { 'aaaa': 'k0kubun' }
      expect(response.status).to eq(200)
    end

    it 'returns a list of tables', openapi: {
      tags: ['てーぶるのいんでっくす'],
      description: 'createの説明がここに説明入ります'
    } do
      json = JSON.generate({ title: 'foo', memo: 'bag' })
      post '/api/v1/tables', params: json, headers: { 'X-Authorization-Token': 'k0kubun', 'Content-Type': 'application/json' }
      expect(response.status).to eq(200)
    end

    it 'returns a list of tables', openapi: {
      tags: ['てーぶるのいんでっくす'],
      description: 'titleがない場合400が返ります'
    } do
      json = JSON.generate({ memo: 'bag' })
      post '/api/v1/tables', params: json, headers: { 'X-Authorization-Token': 'k0kubun', 'Content-Type': 'application/json' }
      expect(response.status).to eq(400)
    end

    # it 'does not return tables if unauthorized' do
    #   get '/api/v1//tables.html'
    #   expect(response.status).to eq(401)
    # end
  end

  # ...
end
