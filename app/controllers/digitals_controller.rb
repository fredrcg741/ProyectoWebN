class DigitalsController < ApplicationController
  def index
  end

  def show
  	if !logged_in?
      redirect_to root_path
    end

    @digitals = Digital.all
  end

  def new
    if !logged_in?
      redirect_to root_path
    end

	 @digital = Digital.new
  end

  def create
  	if !logged_in?
      redirect_to root_path
    end

    @digital = Digital.create(digital_params)
    
    if @digital.save
      redirect_to '/digitals/show'
    else
      redirect_to '/digitals/new'
    end
  end

  def edit
    if !logged_in?
      redirect_to root_path
    end

    @digital = Digital.find(params[:id])
  end

  def update
    if !logged_in?
      redirect_to root_path
    end

    @digital = Digital.find(params[:id])

    if @digital.update(digital_params)
      redirect_to '/digitals/show'
    else
      redirect_to :action => :edit, :id => @digital.id
    end
  end

  def delete
    if !logged_in?
      redirect_to root_path
    end

    @digital = Digital.find(params[:id])
  end

  def destroy
    if !logged_in?
      redirect_to root_path
    end

    @digital = Digital.find(params[:id])
    if @digital.destroy
      redirect_to '/digitals/show'
    else
      redirect_to '/digitals/new'
    end
  end

	private
	# Only allow a list of trusted parameters through.
	def digital_params
		params.require(:digital).permit(:nro_lote, :user_id, :documento, :nro_pages, :imglote)
	end
end
