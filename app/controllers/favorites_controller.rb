class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.addfav(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    @user = User.find(micropost.user.id)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.releasefav(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    @user = User.find(micropost.user.id)
    redirect_back(fallback_location: root_path)
  end
end
