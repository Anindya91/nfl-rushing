class RushingsController < ApplicationController

  # GET /rushings
  def index
    @rushings = Rushing.all
  end
end
