class Api::V1::HivesController < ApplicationController
  before_action :set_hive, only: [:show]

  def index
    @hives = Hive.all

    render json: @hives
  end

  def show
    render json: @hive
  end

  def create
    @hive = Hive.new(hive_params)

    if @hive.save
      render json: @hive, status: :created
    else
      render json: @hive.errors, status: :unprocessable_entity
    end
  end

  private

  def hive_params
    params.require(:hive).permit(:name, :weight, :user_id)
  end

  def set_hive
    @hive = Hive.find(params[:id])
  end

end
