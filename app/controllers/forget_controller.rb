class ForgetController < ApplicationController
  def index
    @forget = Forget.all
  end
end
