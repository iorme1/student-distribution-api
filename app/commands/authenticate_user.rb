class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    p "CHECKiNG IF USER.find_by_email(email) IS WORKING"
    p "CHECKiNG IF USER.find_by_email(email) IS WORKING"
    p "user #{user}"
    p "email #{email}"
    return user if user && user.authenticate(password)
    p "CHECKiNG IF USER.find_by_email(email) IS WORKING"
    p "CHECKiNG IF USER.find_by_email(email) IS WORKING"

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
