class UnitsController < ApplicationController
  def index
    @sc_attributes = ScAttribute.all
    @races = Race.all
    @units = Unit.all
  end
  
  def show
    @sc_attributes = ScAttribute.all
    @races = Race.all
    @unit = Unit.find(params[:id])
  end

  def new
    @sc_attributes = ScAttribute.all
    @races = Race.all
    if params[:race]
      race = Race.where(name: params[:race]).take!
      @unit = race.units.build
    else
      @unit = Unit.new
    end
  end

  def edit
    @sc_attributes = ScAttribute.all
    @races = Race.all
    @unit = Unit.find(params[:id])
  end

  def create
    @sc_attributes = ScAttribute.all
    @races = Race.all
    local_params = unit_params
    race = Race.find(local_params[:race_id])
    # race = Race.find(1)
    local_params[:race] = race
    @unit = race.units.build(local_params)

    if @unit.save
      redirect_to @unit
    else
      render 'new'
    end
  end

  def update
    @sc_attributes = ScAttribute.all
    @races = Race.all
    local_params = unit_params
    race = Race.find(local_params[:race_id])
    local_params[:race] = race
    @unit = Unit.find(params[:id])
   
    if @unit.update(local_params)
      redirect_to @unit
    else
      render 'edit'
    end
  end

  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
  
    redirect_to units_path
  end
  
  private
    def unit_params
      puts params
      params.require(:unit).permit(:name, :supply, :minerals, :gas, :build_time, :size, 
        :armor, :armor_upgrade, :health, :race_id, :cargo, :sc_attributes => [])
        # :shield,  :speed, :sight, :sight_upgrade
      #params.require(:post).permit(:race, :cargo, :sc_attributes => [])
      puts params
 #     params[:unit]
      params.require(:unit).permit(:name, :supply, :minerals, :gas, :build_time, :size, 
        :armor, :armor_upgrade, :health, :race_id, :cargo, :sc_attributes => [])
    end
end