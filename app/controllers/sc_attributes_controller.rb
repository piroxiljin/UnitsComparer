class ScAttributesController < ApplicationController
  def index
    @sc_attributes = ScAttribute.all
  end
end
