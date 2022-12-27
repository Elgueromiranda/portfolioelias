class HomeController < ApplicationController
  def index
    render "home/index"
  end
  def contacts
      render "home/contacts"

  end
  def portfolio
      render "home/portfolio"

  end
  def challenges
      render "home/challenges"

  end
end
