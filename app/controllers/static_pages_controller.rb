class StaticPagesController < ApplicationController
  
  skip_authorization_check

  def home
    
  end

  def about_me
    @areas = Area.all
  end

  def projects
  end

  def contact_new
  end

  def data
    # binding.pry
    @area = Area.find_by_kml_id(params[:map_point])
    #@lots = @area.water_lots
    #map_data = { :area => @area.id, :lots => @lots.to_json }
    render :json => {:map_data => @area.attributes}
  end
end
