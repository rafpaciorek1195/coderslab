class TestowasController < ApplicationController
  before_action :set_testowa, only: [:show, :edit, :update, :destroy]

  # GET /testowas
  # GET /testowas.json
  def index
    @testowas = Testowa.all
  end

  # GET /testowas/1
  # GET /testowas/1.json
  def show
  end

  # GET /testowas/new
  def new
    @testowa = Testowa.new
  end

  # GET /testowas/1/edit
  def edit
  end

  # POST /testowas
  # POST /testowas.json
  def create
    @testowa = Testowa.new(testowa_params)

    respond_to do |format|
      if @testowa.save
        format.html { redirect_to @testowa, notice: 'Testowa was successfully created.' }
        format.json { render :show, status: :created, location: @testowa }
      else
        format.html { render :new }
        format.json { render json: @testowa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testowas/1
  # PATCH/PUT /testowas/1.json
  def update
    respond_to do |format|
      if @testowa.update(testowa_params)
        format.html { redirect_to @testowa, notice: 'Testowa was successfully updated.' }
        format.json { render :show, status: :ok, location: @testowa }
      else
        format.html { render :edit }
        format.json { render json: @testowa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testowas/1
  # DELETE /testowas/1.json
  def destroy
    @testowa.destroy
    respond_to do |format|
      format.html { redirect_to testowas_url, notice: 'Testowa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testowa
      @testowa = Testowa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testowa_params
      params.require(:testowa).permit(:name, :age)
    end
end
