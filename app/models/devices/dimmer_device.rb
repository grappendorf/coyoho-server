# == Schema Information
#
# Table name: dimmer_devices
#
#  id :integer          not null, primary key
#

class DimmerDevice < ActiveRecord::Base

  inherit DeviceBase
  include WlanDevice

  is_a :device

  def self.attr_accessible
    Device.attr_accessible
  end

  def self.small_icon()
    '16/mixer.png'
  end

  def self.large_icon()
    '32/mixer.png'
  end

  def value
    @value ||= 0
  end

  def value= value
    @value = value
  end

  def set_value value
    send_message CaretakerMessages::PWM_WRITE, CaretakerMessages::WRITE_ABSOLUTE, value
  end

  def update
    send_message CaretakerMessages::PWM_READ
  end

  def message_received message, params
    super
    if message == CaretakerMessages::PWM_STATE
      @value = params[0].to_i
      notify_change_listeners
    end
  end

  def current_state
    @value
  end

  def put_state params
    set_value params[:value].to_i
  end

end
