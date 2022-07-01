class MetodoPagosController < ApplicationController
  before_action :set_metodo_pago, only: %i[ show edit update destroy ]

  # GET /metodo_pagos or /metodo_pagos.json
  def index
    @metodo_pagos = MetodoPago.all
  end

  # GET /metodo_pagos/1 or /metodo_pagos/1.json
  def show
  end

  # GET /metodo_pagos/new
  def new
    @metodo_pago = MetodoPago.new
  end

  # GET /metodo_pagos/1/edit
  def edit
  end

  # POST /metodo_pagos or /metodo_pagos.json
  def create
    @metodo_pago = MetodoPago.new(metodo_pago_params)

    respond_to do |format|
      if @metodo_pago.save
        format.html { redirect_to metodo_pago_url(@metodo_pago), notice: "Metodo pago was successfully created." }
        format.json { render :show, status: :created, location: @metodo_pago }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @metodo_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metodo_pagos/1 or /metodo_pagos/1.json
  def update
    respond_to do |format|
      if @metodo_pago.update(metodo_pago_params)
        format.html { redirect_to metodo_pago_url(@metodo_pago), notice: "Metodo pago was successfully updated." }
        format.json { render :show, status: :ok, location: @metodo_pago }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @metodo_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metodo_pagos/1 or /metodo_pagos/1.json
  def destroy
    @metodo_pago.destroy

    respond_to do |format|
      format.html { redirect_to metodo_pagos_url, notice: "Metodo pago was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metodo_pago
      @metodo_pago = MetodoPago.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metodo_pago_params
      params.require(:metodo_pago).permit(:code, :name, :string, :producto_id)
    end
end
