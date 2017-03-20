class Providers::BranchesController < ApplicationController
  before_action :set_providers_branch, only: [:show, :edit, :update, :destroy]

  # GET /providers/branches
  # GET /providers/branches.json
  def index
    @providers_branches = Providers::Branch.paginate(page: params[:page], per_page: 5).order('id Desc').all
    render :layout =>false
  end

  # GET /providers/branches/1
  # GET /providers/branches/1.json
  def show
    render :layout=>false
  end

  # GET /providers/branches/new
  def new
    @providers_branch = Providers::Branch.new
    @button_text = 'Add New Branch'
    render :layout=>false
  end

  # GET /providers/branches/1/edit
  def edit
    @button_text = 'Update Branch'
    render :layout=>false
  end

  # POST /providers/branches
  # POST /providers/branches.json
  def create
    @providers_branch = Providers::Branch.new(providers_branch_params)

    respond_to do |format|
      if @providers_branch.save
        format.html { redirect_to providers_branches_path, notice: 'Branch was successfully created.' }
        format.json { redirect_to providers_branches_path, status: :created, location: @providers_branch }
      else
        format.html { render :new }
        format.json { render json: @providers_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/branches/1
  # PATCH/PUT /providers/branches/1.json
  def update
    respond_to do |format|
      if @providers_branch.update(providers_branch_params)
        format.html { redirect_to providers_branches_path, notice: 'Branch was successfully updated.' }
        format.json { redirect_to providers_branches_path, status: :ok, location: @providers_branch }
      else
        format.html { render :edit }
        format.json { render json: @providers_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/branches/1
  # DELETE /providers/branches/1.json
  def destroy
    @providers_branch.destroy
    respond_to do |format|
      format.html { redirect_to providers_branches_url, notice: 'Branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providers_branch
      @providers_branch = Providers::Branch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providers_branch_params
      params.require(:providers_branch).permit(:provider, :address, :phone_number, :landline, :cell_number, :opening_times, :bank_detail)
    end
end
