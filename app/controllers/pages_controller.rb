class PagesController < ApplicationController
  def home
    @basicPlan = Plan.find(1)
    @proPlan = Plan.find(2)
  end
  
  def about
  end
end