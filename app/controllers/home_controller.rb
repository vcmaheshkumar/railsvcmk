class HomeController < ApplicationController
  def index
  end

  def about
    @about_project = "Example project..."
    # <% addition = 16 + 90 %>
    # 16 + 90 = <%= addition %>
    @addition = 16 + 90
  end
  
end
