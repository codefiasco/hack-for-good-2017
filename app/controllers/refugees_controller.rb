class RefugeesController < ApplicationController

  def index
    @refugees = Refugee.all
  end

end
