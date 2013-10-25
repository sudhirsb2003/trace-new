class PickUpPointsController < ApplicationController
  # GET /pick_up_points
  # GET /pick_up_points.json
  def index
    @pick_up_points = PickUpPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pick_up_points }
    end
  end

  # GET /pick_up_points/1
  # GET /pick_up_points/1.json
  def show
    @pick_up_point = PickUpPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pick_up_point }
    end
  end

  # GET /pick_up_points/new
  # GET /pick_up_points/new.json
  def new
    @pick_up_point = PickUpPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pick_up_point }
    end
  end

  # GET /pick_up_points/1/edit
  def edit
    @pick_up_point = PickUpPoint.find(params[:id])
  end

  # POST /pick_up_points
  # POST /pick_up_points.json
  def create
    @pick_up_point = PickUpPoint.new(params[:pick_up_point])

    respond_to do |format|
      if @pick_up_point.save
        format.html { redirect_to @pick_up_point, notice: 'Pick up point was successfully created.' }
        format.json { render json: @pick_up_point, status: :created, location: @pick_up_point }
      else
        format.html { render action: "new" }
        format.json { render json: @pick_up_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pick_up_points/1
  # PUT /pick_up_points/1.json
  def update
    @pick_up_point = PickUpPoint.find(params[:id])

    respond_to do |format|
      if @pick_up_point.update_attributes(params[:pick_up_point])
        format.html { redirect_to @pick_up_point, notice: 'Pick up point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pick_up_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pick_up_points/1
  # DELETE /pick_up_points/1.json
  def destroy
    @pick_up_point = PickUpPoint.find(params[:id])
    @pick_up_point.destroy

    respond_to do |format|
      format.html { redirect_to pick_up_points_url }
      format.json { head :no_content }
    end
  end
end
