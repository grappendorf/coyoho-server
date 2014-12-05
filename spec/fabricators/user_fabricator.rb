Fabricator :admin, from: :user do
	name 'admin'
	email 'admin@example.com'
	password 'password'
	password_confirmation 'password'
	after_create do |admin|
		admin.add_role :admin
		admin.add_role :manager
		admin.add_role :user
		Fabricate :dashboard, user: admin, default: true
	end
end

Fabricator :manager, from: :user do
	name 'manager'
	email 'manager@example.com'
	password 'password'
	password_confirmation 'password'
	after_create do |manager|
		manager.add_role :manager
		manager.add_role :user
		Fabricate :dashboard, user: manager, default: true
	end
end

Fabricator :user, from: :user do
	name 'user'
	email 'user@example.com'
	password 'password'
	password_confirmation 'password'
	after_create do |user|
		user.add_role :user
		Fabricate :dashboard, user: user, default: true
	end
end

Fabricator :other_user, from: :user do
	name 'roe'
	email 'jane.roe@example.com'
	password 'password'
	password_confirmation 'password'
	after_create do |user|
		user.add_role :user
		Fabricate :dashboard, user: user, default: true
	end
end

Fabricator :alice, from: :user do
	name 'alice'
	email 'alice@example.com'
	password 'password'
	password_confirmation 'password'
	after_create do |user|
		user.add_role :user
		Fabricate :dashboard, user: user, default: true
	end
end

Fabricator :bob, from: :user do
	name 'bob'
	email 'bob@example.com'
	password 'password'
	password_confirmation 'password'
	after_create do |user|
		user.add_role :user
		Fabricate :dashboard, user: user, default: true
	end
end

Fabricator :carol, from: :user do
	name 'carol'
	email 'carol@example.com'
	password 'password'
	password_confirmation 'password'
	after_create do |user|
		user.add_role :user
		Fabricate :dashboard, user: user, default: true
	end
end