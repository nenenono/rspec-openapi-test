class Api::V1::TablesController < ApplicationController
  def index
    @tables = Table.all

    render json: @tables
  end

  def create
    @table = Table.new(title: params[:title], memo: params[:memo])

    if @table.save
      render json: @table
    else
      head :bad_request
    end
  end
end
