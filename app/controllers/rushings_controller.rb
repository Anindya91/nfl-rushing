class RushingsController < ApplicationController

  # GET /rushings
  def index
    @rushings = Rushing.from_json
  end
end
