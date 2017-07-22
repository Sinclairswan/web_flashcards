helpers do
  def current_user
    @user = nil
    @user = User.find_by(id: session['user_id']) if session['user_id']
    @user
  end
end
