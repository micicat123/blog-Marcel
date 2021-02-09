class PostaController < ApplicationController
  before_action :set_postum, only: %i[ show edit update destroy ]

  # GET /posta or /posta.json
  def index
    @posta = Postum.all
  end

  # GET /posta/1 or /posta/1.json
  def show
  end

  # GET /posta/new
  def new
    @postum = Postum.new
  end

  # GET /posta/1/edit
  def edit
  end

  # POST /posta or /posta.json
  def create
    @postum = Postum.new(postum_params)

    respond_to do |format|
      if @postum.save
        format.html { redirect_to @postum, notice: "Postum was successfully created." }
        format.json { render :show, status: :created, location: @postum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posta/1 or /posta/1.json
  def update
    respond_to do |format|
      if @postum.update(postum_params)
        format.html { redirect_to @postum, notice: "Postum was successfully updated." }
        format.json { render :show, status: :ok, location: @postum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posta/1 or /posta/1.json
  def destroy
    @postum.destroy
    respond_to do |format|
      format.html { redirect_to posta_url, notice: "Postum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postum
      @postum = Postum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postum_params
      params.require(:postum).permit(:title, :body)
    end
end
