class DataController < ApplicationController

  # GET /data.xml
  def index
    @page_objects = PageObject.find(:all, :conditions => { :urn => params[:from] })
    @data = @page_objects.collect { |po| { :urn => po.urn, :picture => po.picture_url } }
    
    respond_to do |format|
      format.xml  { render :xml => @data }
    end
  end

end
