class SessionsController < ApplicationController
  def new
  end
  def create
	  user = User.authenticate(params[:session][:mail],
							   params[:session][:password])
	  if user.nil?
		  flash.now[:error] = "Combinaison Email/Mot de passe invalide."
		  @titre = "S'identifier"
		  render 'new'
	  else
		  sign_in user
		  redirect_to :projets
	  end
	end
	def destroy
		sign_out
		redirect_to root_path
	  end
end
