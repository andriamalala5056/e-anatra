class EtablissementsController < ApplicationController
  before_action :get_id, only: [:show, :update]

  def index
    @etablissements = Etablissement.all
  end

  def show   
  end

  def new
    @etablissement = Etablissement.new
  end

  def create
    @etablissement = Etablissement.new(etablissement_params)
    if @etablissement.save
      render "index"
    else
      render "new"
    end
  end

  def update
  end

  def delete
  end

  private

  def etablissement_params
    params.require(:etablissement).permit(:nom, :mail, :telephone, :adress, :description, :category, :longitude, :latitude, :dossier_a_fournir)
  end

  def get_id
    @etablissement = Etablissement.find(params[:id])
  end
end
