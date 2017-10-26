class PaginasEstaticasController < ApplicationController
	before_action :authenticate_usuario!

	def principal
	end

	def assinatura_matricula
		@crianca = Crianca.find_by(params[:id])

		@responsavel = Responsavel.find_by(params[:id])
	end
end
