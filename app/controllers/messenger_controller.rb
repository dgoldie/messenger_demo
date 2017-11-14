# handle messenger callbacks
#
class MessengerController < ApplicationController
  def callbacks
    Logger.info "callbacks params = #{params.inspect}"
    head :ok
  end
end
