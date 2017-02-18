class Providers::BankDetailsController < ApplicationController
  before_action :set_providers_bank_detail, only: [:show, :edit, :update, :destroy]

  # GET /providers/bank_details
  # GET /providers/bank_details.json
  def index
    @providers_bank_details = Providers::BankDetail.paginate(page: params[:page], per_page: 5).order('id Desc').all
    render :layout => false

  end

  # GET /providers/bank_details/1
  # GET /providers/bank_details/1.json
  def show
    render :layout => false
  end

  # GET /providers/bank_details/new
  def new
    @providers_bank_detail = Providers::BankDetail.new
    render :layout => false
  end

  # GET /providers/bank_details/1/edit
  def edit
    render :layout => false
  end

  # POST /providers/bank_details
  # POST /providers/bank_details.json
  def create
    @providers_bank_detail = Providers::BankDetail.new(providers_bank_detail_params)

    respond_to do |format|
      if @providers_bank_detail.save
        format.html { redirect_to providers_bank_details_path, notice: 'Bank detail was successfully created.' }
        format.json { render :show, status: :created, location: @providers_bank_detail }
      else
        format.html { render :new }
        format.json { render json: @providers_bank_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/bank_details/1
  # PATCH/PUT /providers/bank_details/1.json
  def update
    respond_to do |format|
      if @providers_bank_detail.update(providers_bank_detail_params)
        format.html { redirect_to @providers_bank_detail, notice: 'Bank detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @providers_bank_detail }
      else
        format.html { render :edit }
        format.json { render json: @providers_bank_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/bank_details/1
  # DELETE /providers/bank_details/1.json
  def destroy
    @providers_bank_detail.destroy
    respond_to do |format|
      format.html { redirect_to providers_bank_details_url, notice: 'Bank detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providers_bank_detail
      @providers_bank_detail = Providers::BankDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providers_bank_detail_params
      params.require(:providers_bank_detail).permit(:bank, :account_number, :branch, :branch_code, :swift_code)
    end
end
