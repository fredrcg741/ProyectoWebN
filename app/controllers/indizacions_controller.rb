class IndizacionsController < ApplicationController
  def index
  end

  def show
    if !logged_in?
      redirect_to root_path
    end


    @indizacions = Digital.find_by_sql("SELECT digitals.id [d_id], digitals.nro_lote [d_nro_lote], digitals.documento [d_documento], digitals.nro_pages [d_nro_pages], digitals.user_id [d_user_id], digitals.imglote [d_imglote], indizacions.tipo_doc [i_tipo_doc], indizacions.num_doc [i_num_doc], indizacions.fecha_doc [i_fecha_doc]  FROM digitals LEFT JOIN indizacions on digitals.id = indizacions.doc_id")

  end

  def edit
    if !logged_in?
      redirect_to root_path
    end

    @indizacion = Indizacion.find_by(doc_id: params[:id])
    @digital = Digital.find(params[:id])

  end

  def update
    if !logged_in?
      redirect_to root_path
    end

    @val = Indizacion.find_by(doc_id: params[:id])
    if @val
      @indizacion = Indizacion.find(@val.id)
      if @indizacion.update(indizacion_params)
        redirect_to '/indizacions/show'
      else
        redirect_to :action => :edit, :id => @val.doc_id
      end
    else
      @indizacion = Indizacion.create(indizacion_params)
      if @indizacion.save
        redirect_to '/indizacions/show'
      else
        redirect_to :action => :edit, :id => @val.doc_id
      end
    end
  end

  def new_deskpart
  end

  def manager_deskpart
  end

  def new_actdirect
  end

  def manager_actdirect
  end

  private
  # Only allow a list of trusted parameters through.
  def indizacion_params
    params.require(:indizacion).permit(:tipo_doc, :num_doc, :fecha_doc, :ini_fol, :fin_fol, :ini_doc, :fin_doc, :doc_id, :user_id)
  end
end
