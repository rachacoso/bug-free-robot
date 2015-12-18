require 'rails_helper'

RSpec.describe QuestionGeneratorController, type: :controller do

  describe "GET #new_question" do
    it "returns http success" do
      get :new_question
      expect(response).to have_http_status(:success)
    end
  end

end
