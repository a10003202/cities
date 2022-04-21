module ControllerMacros
  def login_user
    # Before each test, create and login the user
    before(:each) do
      user = User.create({email: 'user@email.com', password: '123456'})
      user.add_role 'admin'
      # user.confirm! # Or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user
    end
  end

  # Not used in this tutorial, but left to show an example of different user types
  # def login_admin
  #   before(:each) do
  #     @request.env["devise.mapping"] = Devise.mappings[:admin]
  #     sign_in FactoryBot.create(:admin) # Using factory bot as an example
  #   end
  # end
end