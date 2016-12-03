class RichrdsController < ApplicationController
  before_action :set_richrd, only: [:show, :edit, :update, :destroy]

  # GET /richrds
  # GET /richrds.json
  def index
    # @richrds = Richrd.all
  end

  # GET /richrds/1
  # GET /richrds/1.json
  def show
  end

  # GET /richrds/new
  def new
    @richrd = Richrd.new
  end

  # GET /richrds/1/edit
  def edit
  end

  # POST /richrds
  # POST /richrds.json
  def create
    @richrd = Richrd.new(richrd_params)

    respond_to do |format|
      if @richrd.save
        format.html { redirect_to @richrd, notice: 'Richrd was successfully created.' }
        format.json { render :show, status: :created, location: @richrd }
      else
        format.html { render :new }
        format.json { render json: @richrd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /richrds/1
  # PATCH/PUT /richrds/1.json
  def update
    respond_to do |format|
      if @richrd.update(richrd_params)
        format.html { redirect_to @richrd, notice: 'Richrd was successfully updated.' }
        format.json { render :show, status: :ok, location: @richrd }
      else
        format.html { render :edit }
        format.json { render json: @richrd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /richrds/1
  # DELETE /richrds/1.json
  def destroy
    @richrd.destroy
    respond_to do |format|
      format.html { redirect_to richrds_url, notice: 'Richrd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_richrd
      @richrd = Richrd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def richrd_params
      params.fetch(:richrd, {})
    end
end
