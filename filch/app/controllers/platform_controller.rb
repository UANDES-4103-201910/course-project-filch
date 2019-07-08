class PlatformController < ApplicationController
  def index
  	@rants=Rant.all
  end
  def terms
  	
  end

  def search
  	
  end
end
