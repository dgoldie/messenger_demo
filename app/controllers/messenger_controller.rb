# handle messenger callbacks
#
class MessengerController < ApplicationController
  def callbacks
    logger.info "callbacks params = #{params.inspect}"
    head :ok
  end
end
