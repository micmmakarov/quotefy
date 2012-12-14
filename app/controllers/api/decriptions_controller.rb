class Api::DecriptionsController < ApplicationController
  # GET /decriptions
  # GET /decriptions.json
  def index
    @decriptions = Decription.all

    render json: @descriptions
  end

  # GET /decriptions/1
  # GET /decriptions/1.json
  def show
    @decription = Decription.find(params[:id])

    render json: @description
  end

  # GET /decriptions/new
  # GET /decriptions/new.json
  def new
    @decription = Decription.new

    render json: @description
  end

  # GET /decriptions/1/edit
  def edit
    @decription = Decription.find(params[:id])
  end

  # POST /decriptions
  # POST /decriptions.json
  def create
    @decription = Decription.new(params[:decription])

    render json: @description
  end

  # PUT /decriptions/1
  # PUT /decriptions/1.json
  def update
    @decription = Decription.find(params[:id])

    render json: @description
  end

  # DELETE /decriptions/1
  # DELETE /decriptions/1.json
  def destroy
    @decription = Decription.find(params[:id])
    @decription.destroy

    render json: @description

  end
end
