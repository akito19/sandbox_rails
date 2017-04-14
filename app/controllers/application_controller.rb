class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def foo
    'bar'
  end
end
