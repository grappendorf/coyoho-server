# == Schema Information
#
# Table name: devices
#
#  id           :integer          not null, primary key
#  actable_id   :integer
#  actable_type :string
#  name         :string
#  address      :string
#  description  :string
#  uuid         :string
#

require 'securerandom'

Fabricator :device do
  uuid { SecureRandom.uuid }
  name { sequence(:name) { |n| "Device-#{n}" } }
  address '00:11:22:33:44:55'
  description 'A generic device'
end

Fabricator :switch_device do
  uuid '6a27c513-994d-46cb-b9dd-7bbaf97fa504'
  name 'Switch'
  address '0000000000000001'
  description 'Lot\'s of switches'
  num_switches 1
  switches_per_row 1
end

Fabricator :camera_device do
  uuid '3ce1c6e2-1085-431a-8c24-a5cc66466d2e'
  name 'Camera 1'
  address '0000000000000005'
  description '..+++###'
  host '127.0.0.1'
  port 80
  user 'user'
  password 'password'
  refresh_interval 60
end

Fabricator :cipcam_device do
  uuid '976e79c8-a722-49c7-b1b1-2c36093f9c03'
  name 'Camera 2'
  address '0000000000000006'
  description '..+++###'
  user 'user'
  password 'password'
  refresh_interval 60
end

Fabricator :dimmer_device do
  uuid '082ea83d-6a39-4b13-8855-1dff06b6d556'
  name 'Dimmer Device'
  address '0000000000000003'
  description '..+++###'
end

Fabricator :dimmer_rgb_device do
  uuid '7157e214-0093-47a4-a511-3180d49bd4f1'
  name 'Dimmer RGB Device'
  address '0000000000000004'
  description '..+++###'
end

Fabricator :easyvr_device do
  uuid '009511eb-5534-472f-84fa-15d7ecde3275'
  name 'EasyVR Device'
  address '0000000000000008'
  description '..+++###'
  num_buttons 10
  buttons_per_row 5
end

Fabricator :remote_control_device do
  uuid '47f0c8f9-d031-4678-9074-4612098a2198'
  name 'Remote Control Device'
  address '0000000000000009'
  description '-~-~-~>>>'
  num_buttons 10
  buttons_per_row 5
end
