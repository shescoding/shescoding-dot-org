class WelcomeController < ApplicationController
  def index
  end
  def team
    @team_members = 7.times.collect {"Nathalie Steinmetz"}
    @last_row = if @team_members.length % 4 != 0
        @team_members.length - (@team_members.length % 4)
    end
  end
end
