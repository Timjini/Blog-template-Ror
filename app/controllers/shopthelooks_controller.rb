class ShopthelooksController < ApplicationController
  #before_action :set_shopthelook, only: %i[ show edit update destroy ]

  # GET /shopthelooks or /shopthelooks.json
  def index
    @shopthelooks = Shopthelook.all
  end

  # GET /shopthelooks/1 or /shopthelooks/1.json
  def show
    @shopthelook = Shopthelook.all
  end

  # GET /shopthelooks/new
  def new
    @shopthelook = Shopthelook.new
  end

  # GET /shopthelooks/1/edit
  def edit
  end

  # POST /shopthelooks or /shopthelooks.json
  def create
    @shopthelook = Shopthelook.new(shopthelook_params)

    respond_to do |format|
      if @shopthelook.save
        format.html { redirect_to shopthelook_url(@shopthelook), notice: "Shopthelook was successfully created." }
        format.json { render :show, status: :created, location: @shopthelook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopthelook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopthelooks/1 or /shopthelooks/1.json
  def update
    respond_to do |format|
      if @shopthelook.update(shopthelook_params)
        format.html { redirect_to shopthelook_url(@shopthelook), notice: "Shopthelook was successfully updated." }
        format.json { render :show, status: :ok, location: @shopthelook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopthelook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopthelooks/1 or /shopthelooks/1.json
  def destroy
    @shopthelook.destroy

    respond_to do |format|
      format.html { redirect_to shopthelooks_url, notice: "Shopthelook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def destroy
    @shopthelook = current_user.shopthelook.find(params[:id])
    @shopthelook.destroy
    redirect_to shopthelooks_url, notice: "shopthelook was successfully destroyed."
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_shopthelook
      @shopthelook = Shopthelook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopthelook_params
      params.require(:shopthelook).permit(:description, :url, :url1, :url2,:picture, images: [])
    end
end
