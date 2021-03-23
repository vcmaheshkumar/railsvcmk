class VcmksController < ApplicationController
  before_action :set_vcmk, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /vcmks or /vcmks.json
  def index
    @vcmks = Vcmk.all
  end

  # GET /vcmks/1 or /vcmks/1.json
  def show
  end

  # GET /vcmks/new
  def new
    #@vcmk = Vcmk.new
    @vcmk = current_user.Vcmks.build
  end

  # GET /vcmks/1/edit
  def edit
  end

  # POST /vcmks or /vcmks.json
  def create
    #@vcmk = Vcmk.new(vcmk_params)
    @vcmk = current_user.Vcmks.build(vcmk_params)
    respond_to do |format|
      if @vcmk.save
        format.html { redirect_to @vcmk, notice: "Vcmk was successfully created." }
        format.json { render :show, status: :created, location: @vcmk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vcmk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vcmks/1 or /vcmks/1.json
  def update
    respond_to do |format|
      if @vcmk.update(vcmk_params)
        format.html { redirect_to @vcmk, notice: "Vcmk was successfully updated." }
        format.json { render :show, status: :ok, location: @vcmk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vcmk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vcmks/1 or /vcmks/1.json
  def destroy
    @vcmk.destroy
    respond_to do |format|
      format.html { redirect_to vcmks_url, notice: "Vcmk was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def correct_user
    @vcmk = current_user.Vcmks.find_by(id: params[:id])
    redirect_to vcmks_path, notice: "You are not autherized" if @vcmk.nil?
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vcmk
      @vcmk = Vcmk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vcmk_params
      params.require(:vcmk).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
