class PagesController < ApplicationController
  def Home
    @title = "Home"
  end

  def Contact
    @title = "Contact"
  end
  
  def about
  @title = "About"
  end
  
  def Help
  @title = "Help"
  end

end
