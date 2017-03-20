class Providers::OpeningTimesController < ApplicationController
  before_action :set_providers_opening_time, only: [:show, :edit, :update, :destroy]

  # GET /providers/opening_times
  # GET /providers/opening_times.json
  def index
    @providers_opening_times = Providers::OpeningTime.paginate(page: params[:page], per_page: 5).order('id Desc').all
    render :layout =>false
  end

  # GET /providers/opening_times/1
  # GET /providers/opening_times/1.json
  def show
    render :layout=>false
  end

  # GET /providers/opening_times/new
  def new
    @providers_opening_time = Providers::OpeningTime.new
    @button_text = 'Add New Branch Opening Times'
    render :layout=>false
  end

  # GET /providers/opening_times/1/edit
  def edit
    render :layout =>false
    @button_text = 'Update Branch Opening Times'
  end

  # POST /providers/opening_times
  # POST /providers/opening_times.json
  def create
    @providers_opening_time = Providers::OpeningTime.new(providers_opening_time_params)

    respond_to do |format|
      if @providers_opening_time.save
        format.html { redirect_to providers_opening_times_path, notice: 'Opening time was successfully created.' }
        format.json { render :show, status: :created, location: @providers_opening_time }
      else
        format.html { render :new }
        format.json { render json: @providers_opening_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/opening_times/1
  # PATCH/PUT /providers/opening_times/1.json
  def update
    respond_to do |format|
      if @providers_opening_time.update(providers_opening_time_params)
        format.html { redirect_to providers_opening_times_path, notice: 'Opening time was successfully updated.' }
        format.json { render :show, status: :ok, location: @providers_opening_time }
      else
        format.html { render :edit }
        format.json { render json: @providers_opening_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/opening_times/1
  # DELETE /providers/opening_times/1.json
  def destroy
    @providers_opening_time.destroy
    respond_to do |format|
      format.html { redirect_to providers_opening_times_url, notice: 'Opening time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providers_opening_time
      @providers_opening_time = Providers::OpeningTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providers_opening_time_params
      params.require(:providers_opening_time).permit(:opening_time, :timestamp, :closing_time, :day_of_week)
    end
end
