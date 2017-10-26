class UsuariosController < ApplicationController
	before_action :authenticate_usuario!, only: [:create, :destroy]

  def new
  	@usuario = Usuario.new
  end

  def create
  	@usuario = Usuario.new(usuario_params)
  end

  def destroy
  end

  private
  	def usuario_params
  		params.require(:usuario).permit(:nome, :email, :password, :confirmacao_password)
  	end
end
