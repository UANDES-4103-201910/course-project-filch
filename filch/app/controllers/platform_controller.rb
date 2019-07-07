class PlatformController < ApplicationController
  def index
  	@rants=Rant.all
  end
end
