class HomeController < ApplicationController
  def index
    @rooms = Rooms.take(3)
  end
end
