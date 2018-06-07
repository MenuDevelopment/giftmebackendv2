class ApplicationController < ActionController::API

  def jwt_password
    ENV["JWT_PASSWORD"]
  end


  def generate_token(user)
    JWT.encode({ "user_id": user.id }, jwt_password, 'HS256')
  end

  def token_json(user)
    {
      email: user.email,
      user_id: user.id,
      token: generate_token(user)
    }
  end

  def try_decode_token


  end

  def valid_token?
    !!try_decode_token
  end
end
