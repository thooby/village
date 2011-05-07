class CommunesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]  
  # GET /communes
  # GET /communes.xml
  def index
    @communes = Commune.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @communes }
    end
  end

  # GET /communes/1
  # GET /communes/1.xml
  def show
    @commune = Commune.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commune }
    end
  end

  # GET /communes/new
  # GET /communes/new.xml
  def new
    @commune = Commune.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @commune }
    end
  end

  # GET /communes/1/edit
  def edit
    @commune = Commune.find(params[:id])
  end

  # POST /communes
  # POST /communes.xml
  def create
    @commune = Commune.new(params[:commune])

    respond_to do |format|
      if @commune.save
        format.html { redirect_to(@commune, :notice => 'Commune was successfully created.') }
        format.xml  { render :xml => @commune, :status => :created, :location => @commune }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @commune.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /communes/1
  # PUT /communes/1.xml
  def update
    @commune = Commune.find(params[:id])

    respond_to do |format|
      if @commune.update_attributes(params[:commune])
        format.html { redirect_to(@commune, :notice => 'Commune was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commune.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /communes/1
  # DELETE /communes/1.xml
  def destroy
    @commune = Commune.find(params[:id])
    @commune.destroy

    respond_to do |format|
      format.html { redirect_to(communes_url) }
      format.xml  { head :ok }
    end
  end
end
