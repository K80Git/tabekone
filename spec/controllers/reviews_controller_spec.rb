require 'rails_helper'

describe ReviewsController do
  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested review to @review" do
      review = create(:review)
      get :edit, params: { id: review }
    end

    it "renders the :edit template" do
      review = create(:review)
      get :edit, params: { id: review }
      expect(response).to render_template :edit
    end

  end
end