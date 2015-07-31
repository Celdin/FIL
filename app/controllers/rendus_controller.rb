class RendusController < ApplicationController
  before_action :set_rendu, only: [:show, :edit, :update, :destroy]

  # GET /rendus
  # GET /rendus.json
  def index
    @rendus = Rendu.all
  end

  # GET /rendus/1
  # GET /rendus/1.json
  def show
  end

  # GET /rendus/new
  def new
    @rendu = Rendu.new
  end

  # GET /rendus/1/edit
  def edit
  end

  # POST /rendus
  # POST /rendus.json
  def create
    @rendu = Rendu.new(rendu_params)

	renduToUserLink = RenduToUserLink.new
	renduToUserLink.rendu = @rendu.id
	renduToUserLink.user = current_user
	renduToUserLink.save
	
	@rendu.projet = params[:id]
	upload = params[:upload]
	DataFile.save(upload)
    name =  upload['datafile'].original_filename
    directory = "public/data"
    path = File.join(directory, name)
	@rendu.dataFilePath = path
    respond_to do |format|
      if @rendu.save
        format.html { redirect_to @rendu, notice: 'Rendu was successfully created.' }
        format.json { render :show, status: :created, location: @rendu }
      else
        format.html { render :new }
        format.json { render json: @rendu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rendus/1
  # PATCH/PUT /rendus/1.json
  def update
    respond_to do |format|
      if @rendu.update(rendu_params)
        format.html { redirect_to @rendu, notice: 'Rendu was successfully updated.' }
        format.json { render :show, status: :ok, location: @rendu }
      else
        format.html { render :edit }
        format.json { render json: @rendu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rendus/1
  # DELETE /rendus/1.json
  def destroy
    @rendu.destroy
    respond_to do |format|
      format.html { redirect_to rendus_url, notice: 'Rendu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rendu
      @rendu = Rendu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rendu_params
      params.permit(:note)
    end
end
