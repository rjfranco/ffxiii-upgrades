class PageController < ApplicationController
  def index
    @characters = Character.all
  end
end
