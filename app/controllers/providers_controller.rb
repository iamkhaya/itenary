class ProvidersController < ApplicationController
    before_action :set_provider, only: [:show, :edit, :update, :destroy]

    # GET /providers
    # GET /providers.json
    def index
        @providers = Provider.paginate(page: params[:page], per_page: 5).order('id Desc').all
        render layout: false
    end

    # GET /providers/1
    # GET /providers/1.json
    def show
        render layout: false
    end

    # GET /providers/new
    def new
        render layout: false
    end

    # GET /providers/1/edit
    def edit
        render layout: false
    end

    # POST /providers
    # POST /providers.json
    def create
        @provider = Provider.new(provider_params)

        respond_to do |format|
            if @provider.save

                format.html { redirect_to action: 'index', notice: 'Provider was successfully created.' }
                format.json { render :index, status: :created, location: @provider }
            else
                format.html { render :new }
                format.json { render json: @provider.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /providers/1
    # PATCH/PUT /providers/1.json
    def update
        respond_to do |format|
            if @provider.update(provider_params)
                format.html { redirect_to  action: 'index', notice: 'Provider was successfully updated.' }
                format.json { render :index, status: :ok, location: @provider }
            else
                format.html { render :edit }
                format.json { render json: @provider.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /providers/1
    # DELETE /providers/1.json
    def destroy
        @provider.destroy
        respond_to do |format|
            format.html { redirect_to providers_url, notice: 'Provider was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_provider
        @provider = Provider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_params
        params.require(:provider).permit(:name, :payment_type, :branch, :bank_detail)
    end
end
