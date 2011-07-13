class EadsController < ApplicationController

   load_and_authorize_resource


  #GET /eads
  # GET /eads.xml
  def index
    @eads = Ead.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eads }
    end
  end

  # GET /eads/1
  # GET /eads/1.xml
  def show
    @ead = Ead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ead }
    end
  end

  # GET /eads/new
  # GET /eads/new.xml
  def new
    @ead = Ead.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ead }
    end
  end

  # GET /eads/1/edit
  def edit
    @ead = Ead.find(params[:id])
  end

  # POST /eads
  # POST /eads.xml
  def create
    @ead = Ead.new(params[:ead])

    respond_to do |format|
      if @ead.save
        format.html { redirect_to(@ead, :notice => 'Ead was successfully created.') }
        format.xml  { render :xml => @ead, :status => :created, :location => @ead }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /eads/1
  # PUT /eads/1.xml
  def update
    @ead = Ead.find(params[:id])

    respond_to do |format|
      if @ead.update_attributes(params[:ead])
        format.html { redirect_to(@ead, :notice => 'Ead was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /eads/1
  # DELETE /eads/1.xml
  def destroy
    @ead = Ead.find(params[:id])
    @ead.destroy

    respond_to do |format|
      format.html { redirect_to(eads_url) }
      format.xml  { head :ok }
    end
  end

  def find

    puts params[:searchfield]
    #@eads=Ead.find_all_by_name(params[:searchfield])
    @eads=Ead.find(:all,:conditions =>["name = ? or description = ?", params[:searchfield] ,params[:searchfield]])
  end
end
