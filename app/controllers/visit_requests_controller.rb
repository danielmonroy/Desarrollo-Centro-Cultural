class VisitRequestsController < ApplicationController
  before_action :set_visit_request, only: [:show, :edit, :update, :destroy]

  # GET /visit_requests
  # GET /visit_requests.json
  def index
    @visit_requests = VisitRequest.all
  end

  # GET /visit_requests/1
  # GET /visit_requests/1.json
  def show
  end

  # GET /visit_requests/new
  def new
    @visit_request = VisitRequest.new
  end

  # GET /visit_requests/1/edit
  def edit
  end

  # POST /visit_requests
  # POST /visit_requests.json
  def create
    @visit_request = VisitRequest.new(visit_request_params)
    @visit_request.approved = false
    respond_to do |format|
      if @visit_request.save
        format.html { redirect_to @visit_request, notice: 'Visit request was successfully created.' }
        format.json { render :show, status: :created, location: @visit_request }
      else
        format.html { render :new }
        format.json { render json: @visit_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_requests/1
  # PATCH/PUT /visit_requests/1.json
  def update
    respond_to do |format|
      if @visit_request.update(visit_request_params)
        format.html { redirect_to @visit_request, notice: 'Visit request was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_request }
      else
        format.html { render :edit }
        format.json { render json: @visit_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_requests/1
  # DELETE /visit_requests/1.json
  def destroy
    @visit_request.destroy
    respond_to do |format|
      format.html { redirect_to visit_requests_url, notice: 'Visit request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_request
      @visit_request = VisitRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_request_params
      params.require(:visit_request).permit(:scheduled, :visitor_name, :visitor_email, :visit_type, :approved)
    end
end
