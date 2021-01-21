class KosiarkasController < ApplicationController
  before_action :set_kosiarka, only: [:show, :edit, :update, :destroy]

  # GET /kosiarkas
  # GET /kosiarkas.json
  def index
    @kosiarkas = Kosiarka.all
  end

  # GET /kosiarkas/1
  # GET /kosiarkas/1.json
  def show
  end

  # GET /kosiarkas/new
  def new
    @kosiarka = Kosiarka.new
  end

  # GET /kosiarkas/1/edit
  def edit
  end

  # POST /kosiarkas
  # POST /kosiarkas.json
  def create
    @kosiarka = Kosiarka.new(kosiarka_params)

    respond_to do |format|
      if @kosiarka.save
        format.html { redirect_to @kosiarka, notice: 'Kosiarka was successfully created.' }
        format.json { render :show, status: :created, location: @kosiarka }
      else
        format.html { render :new }
        format.json { render json: @kosiarka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kosiarkas/1
  # PATCH/PUT /kosiarkas/1.json
  def update
    respond_to do |format|
      if @kosiarka.update(kosiarka_params)
        format.html { redirect_to @kosiarka, notice: 'Kosiarka was successfully updated.' }
        format.json { render :show, status: :ok, location: @kosiarka }
      else
        format.html { render :edit }
        format.json { render json: @kosiarka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kosiarkas/1
  # DELETE /kosiarkas/1.json
  def destroy
    @kosiarka.destroy
    respond_to do |format|
      format.html { redirect_to kosiarkas_url, notice: 'Kosiarka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kosiarka
      @kosiarka = Kosiarka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kosiarka_params
      params.fetch(:kosiarka, {})
    end
end
