class ResponsaveisController < ApplicationController
	before_action :authenticate_usuario!
	
	def new
		@responsavel = Responsavel.new
	end

	def create
		@responsavel = Responsavel.new(responsavel_params)
		if @responsavel.save
			flash[:success] = "#{@responsavel.nome_responsavel} cadastrado com sucesso para #{@aluno.nome_aluno}"
			crianca_responsavei_path
		else
			render :new
		end
	end

	def show
		@responsavel = Responsavel.find_by(params[:id])
	end

	def index
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def responsavel_params
			params.require(:responsavel).permit(:nome_responsavel,
																					:nascimento_responsavel,
																					:telefone_responsavel,
																					:endereco_responsavel,
																					:tipo_responsavel,
																					:trabalho_outros)
		end
end