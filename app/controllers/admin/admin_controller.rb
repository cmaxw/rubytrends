class Admin::AdminController < ApplicationController
  before_filter :authorize

  def authorize
  end
end
