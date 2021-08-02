class UsersController < ApplicationController

    before_action :authorized, only: [:me]

    def me
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
    end

   def index
    users=User.all
    render json: users
   end

#    LOGIN step 3c: the login method takes the params from the frontend (formData) and finds a matching user in the database. If a matching user is found and the user can be authenticated with their password, the login method generates a unique wristband variable for the user. It then sends a response to the frotnend rendering the user, passing down attributes according to the user serializer as well as that user's unique wristband. If the user is not found or can not be authenticated, the method sends the error message as a response to the frontend. See frontend code for next step. 
   def login 
    user = User.find_by(username: params[:formData][:username])
    if user && user.authenticate(params[:formData][:password])
        wristband = encode_token({user_id: user.id})
        render json: {user: UserSerializer.new(user), token: wristband}
    else
        render json: {error: "incorrect username or password"}
    end
   end

#    SIGNUP step 3c: takes in the user_params, assigns a unique wristband based on the new user's id. If the user is valid (see user model for validations), returns a new user. If not valid, sends validation error messages as a response to the frontend. See frontend code for next step.
   def create
    user = User.create(user_params)
    wristband = encode_token({user_id: user.id})
    if user.valid?
        render json: {user: UserSerializer.new(user), token: wristband}
    else 
        render json: {errors: user.errors.full_messages}
    end
   end

   def user_params
    params.permit(:username, :password, :profile_pic)
   end

end
