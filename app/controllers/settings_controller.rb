# frozen_string_literal: true

# class users
class SettingsController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def update_user
    if current_user.update(user_params)
      redirect_to settings_path, notice: 'Seus dados foram atualizado com sucesso.'
    else
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone)
  end
end
