# frozen_string_literal: true

class UsersController < ProtectedController
  skip_before_action :authenticate, only: %i[signup signin index] #remove index for production

  # GET '/users'
  # temporary for development, remove for production
  def index
    @users = User.all
    render json: @users
  end

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out'
  def signout
    current_user.logout
    head :no_content
  end

  # PATCH '/change-password/:id'
  def changepw
    # if the the old password authenticates,
    # the new one is not blank,
    # and the model saves
    # then 204
    # else 400
    if current_user.authenticate(pw_creds[:old]) &&
       !(current_user.password = pw_creds[:new]).blank? &&
       current_user.save
      head :no_content
    else
      head :bad_request
    end
  end

  def changerank
    current_user.scout_rank = rank_params[:rank]
    current_user.save
  end

  def changename
    if name_params[:first] && (name_params[:first] != '')
      current_user.first_name = name_params[:first]
      current_user.save
    end
    if name_params[:last] && (name_params[:last] != '')
      current_user.last_name = name_params[:last]
      current_user.save
    end
  end

  private

  def user_creds
    params.require(:credentials)
          .permit(:email,
                  :password,
                  :password_confirmation,
                  :first_name,
                  :last_name,
                  :scout_rank)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  def rank_params
    params.require(:rank_change).permit(:rank)
  end

  def name_params
    params.require(:display_name_change).permit(:first, :last)
  end
end
