# frozen_string_literal: true

auths = [{
  email: 'test1@gmail.com',
  password: 'password'
}, {
  email: 'test2@gmail.com',
  password: 'password'
}]

amounts = [100, 200]

auths.each.with_index do |auth, i|
  user = User.create!(email: auth[:email], password: auth[:password])
  Balance.create!(total_amount: amounts[i], user: user)
end
