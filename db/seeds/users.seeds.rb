[
    {email: "admin@email.com", password: "123456", roles: ["admin"]},
    {email: "client@email.com", password: "123456", roles: ["client"]}
  ].each do |user_data|
    user = User.find_by(email: user_data[:email])
    if user.nil?
      user = User.new
    end
    user.attributes = user_data.except(:roles)
    user.save!
    user_data[:roles].each do |role|
      user.add_role role
    end
  end