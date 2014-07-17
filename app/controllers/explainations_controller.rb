class ExplainationsController < ApplicationController
  before_action :set_explaination, only: [:show, :edit, :update, :destroy]

  # GET /explainations
  # GET /explainations.json
  def index
    @explainations = Explaination.all
  end

  # GET /explainations/1
  # GET /explainations/1.json
  def show
  end

  # GET /explainations/new
  def new
    @explaination = Explaination.new
  end

  # GET /explainations/1/edit
  def edit
  end

  # POST /explainations
  # POST /explainations.json
  def create
    @explaination = Explaination.new(explaination_params)

    respond_to do |format|
      if @explaination.save
        format.html { redirect_to @explaination, notice: 'Explaination was successfully created.' }
        format.json { render :show, status: :created, location: @explaination }
      else
        format.html { render :new }
        format.json { render json: @explaination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explainations/1
  # PATCH/PUT /explainations/1.json
  def update
    respond_to do |format|
      if @explaination.update(explaination_params)
        format.html { redirect_to @explaination, notice: 'Explaination was successfully updated.' }
        format.json { render :show, status: :ok, location: @explaination }
      else
        format.html { render :edit }
        format.json { render json: @explaination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explainations/1
  # DELETE /explainations/1.json
  def destroy
    @explaination.destroy
    respond_to do |format|
      format.html { redirect_to explainations_url, notice: 'Explaination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explaination
      @explaination = Explaination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def explaination_params
      params.require(:explaination).permit(:word_id, :description_id)
    end
end
