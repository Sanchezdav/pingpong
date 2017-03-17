require 'rails_helper'

RSpec.describe LogGamesController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do
      it "create new log game" do
        post :create, log_game: FactoryGirl.build(:log_game)
        expect(LogGame.count).to eq(1)
      end
    end
  end
end
