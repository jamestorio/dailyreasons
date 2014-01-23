class TodaysController < ApplicationController
  before_action :set_today, only: [:show, :edit, :update, :destroy]

  # GET /todays
  # GET /todays.json
  def index
    @todays = Today.all
  end

  # GET /todays/1
  # GET /todays/1.json
  def show
  end

  # GET /todays/new
  def new
    @today = Today.new
  end

  # GET /todays/1/edit
  def edit
  end

  # POST /todays
  # POST /todays.json
  def create
    @today = Today.new(today_params)

    respond_to do |format|
      if @today.save
        format.html { redirect_to @today, notice: 'Today was successfully created.' }
        format.json { render action: 'show', status: :created, location: @today }
      else
        format.html { render action: 'new' }
        format.json { render json: @today.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todays/1
  # PATCH/PUT /todays/1.json
  def update
    respond_to do |format|
      if @today.update(today_params)
        format.html { redirect_to @today, notice: 'Today was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @today.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todays/1
  # DELETE /todays/1.json
  def destroy
    @today.destroy
    respond_to do |format|
      format.html { redirect_to todays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_today
      @today = Today.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def today_params
      params.require(:today).permit(:date, :Reason_to_celebrate)
    end
end
