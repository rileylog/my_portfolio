class StaticPagesController < ApplicationController
  
  skip_authorization_check

  def home
    @ip_info = IpInfo.new().get_ip_info
  end

  def about_me
  end

  def projects
  end

  def contact_new
  end
end
