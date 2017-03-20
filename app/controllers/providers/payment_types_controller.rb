class Providers::PaymentTypesController < ApplicationController
  before_action :set_providers_payment_type, only: [:show, :edit, :update, :destroy]

  # GET /providers/payment_types
  # GET /providers/payment_types.json
  def index
    @providers_payment_types = Providers::PaymentType.paginate(page: params[:page], per_page: 5).order('id Desc').all
    render :layout=>false
  end

  # GET /providers/payment_types/1
  # GET /providers/payment_types/1.json
  def show
    render :layout=>false
  end

  # GET /providers/payment_types/new
  def new
    @providers_payment_type = Providers::PaymentType.new
    @button_text = 'Add New Payment Type'
    render :layout=>false
  end

  # GET /providers/payment_types/1/edit
  def edit
    render :layout=>false
    @button_text = 'Update Payment Type'
  end

  # POST /providers/payment_types
  # POST /providers/payment_types.json
  def create
    @providers_payment_type = Providers::PaymentType.new(providers_payment_type_params)

    respond_to do |format|
      if @providers_payment_type.save

        format.html { redirect_to providers_payment_types_path, notice: 'Payment type was successfully created.' }
        format.json { render :show, status: :created, location: @providers_payment_type }
      else
        format.html { render :new }
        format.json { render json: @providers_payment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/payment_types/1
  # PATCH/PUT /providers/payment_types/1.json
  def update
    respond_to do |format|
      if @providers_payment_type.update(providers_payment_type_params)
        format.html { redirect_to providers_payment_types_path, notice: 'Payment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @providers_payment_type }
      else
        format.html { render :edit }
        format.json { render json: @providers_payment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/payment_types/1
  # DELETE /providers/payment_types/1.json
  def destroy
    @providers_payment_type.destroy
    respond_to do |format|
      format.html { redirect_to providers_payment_types_url, notice: 'Payment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providers_payment_type
      @providers_payment_type = Providers::PaymentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providers_payment_type_params
      params.require(:providers_payment_type).permit(:payment_type)
    end
end
