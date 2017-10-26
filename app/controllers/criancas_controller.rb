class CriancasController < ApplicationController
	before_action :authenticate_usuario!
	
	def new
		@crianca = Crianca.new
	end

	def create
		@crianca = Crianca.new(crianca_params)
		if @crianca.save!
			redirect_to crianca_path
		else
			render :new
		end
	end

	def edit
		@crianca = Crianca.find_by(params[:id])
	end

	def update
	end

	def destroy
		crianca_path
	end

	def show
		@crianca = Crianca.find_by(params[:id])
	end

	def index
		@criancas = Crianca.all
	end

	private
		def crianca_params
			params.require(:crianca).permit(:nome_crianca,
																			:nascimento_crianca,
																			:horario,
																			:data_matricula,
																			:necessidades_especiais)
		end
end
=begin
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
=end