class WelcomeController < ApplicationController
  def index    
    @paths = Path.all  
  end
end
