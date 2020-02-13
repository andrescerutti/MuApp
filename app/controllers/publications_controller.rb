class PublicationsController < ApplicationController

  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  def index
    @publications = Publication.all
  end

  def show
  end

  def new
    @publication = Publication.new
  end

  def create
    Publication.create(publication_params)
    redirect_to publications_path
  end

  def edit
  end

  def update
    @publication.update(publication_params)
    redirect_to publications_path(@publication)
  end

  def destroy
    @publication.destroy
    redirect_to publications_path
  end

  private

  def publication_params
    params.require(:publication).permit(:categoria, :cantidad, :raza)
  end

  def set_publication
    @publication = Publication.find(params[:id])
  end
end
