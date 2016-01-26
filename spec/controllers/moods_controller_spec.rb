require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe MoodsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Mood. As you add validations to Mood, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:mood)
  }

  let(:invalid_attributes) {
    { name: "" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MoodsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all moods as @moods" do
      mood = Mood.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:moods)).to eq([mood])
    end
  end

  describe "GET #show" do
    it "assigns the requested mood as @mood" do
      mood = Mood.create! valid_attributes
      get :show, {:id => mood.to_param}, valid_session
      expect(assigns(:mood)).to eq(mood)
    end
  end

  describe "GET #new" do
    it "assigns a new mood as @mood" do
      get :new, {}, valid_session
      expect(assigns(:mood)).to be_a_new(Mood)
    end
  end

  describe "GET #edit" do
    it "assigns the requested mood as @mood" do
      mood = Mood.create! valid_attributes
      get :edit, {:id => mood.to_param}, valid_session
      expect(assigns(:mood)).to eq(mood)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Mood" do
        expect {
          post :create, {:mood => valid_attributes}, valid_session
        }.to change(Mood, :count).by(1)
      end

      it "assigns a newly created mood as @mood" do
        post :create, {:mood => valid_attributes}, valid_session
        expect(assigns(:mood)).to be_a(Mood)
        expect(assigns(:mood)).to be_persisted
      end

      it "redirects to the created mood" do
        post :create, {:mood => valid_attributes}, valid_session
        expect(response).to redirect_to(Mood.last)
      end
    end

    context "with identical name" do

      before(:each) do
        mood = Mood.create! valid_attributes
      end

      it "doesn't create a new Mood" do
        expect {
          post :create, {:mood => valid_attributes}, valid_session
        }.to change(Mood, :count).by(0)
      end

      it "assigns a newly created but unsaved mood as @mood" do
        post :create, {:mood => valid_attributes}, valid_session
        expect(assigns(:mood)).to be_a_new(Mood)
      end

      it "re-renders the 'new' template" do
        post :create, {:mood => valid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved mood as @mood" do
        post :create, {:mood => invalid_attributes}, valid_session
        expect(assigns(:mood)).to be_a_new(Mood)
      end

      it "re-renders the 'new' template" do
        post :create, {:mood => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do

      new_name = FFaker::Lorem.word
      new_description = FFaker::Lorem.paragraph
      let(:new_attributes) {
        {
        name: new_name,
        description: new_description 
        }
      }

      it "updates the requested mood" do
        mood = Mood.create! valid_attributes
        put :update, {:id => mood.to_param, :mood => new_attributes}, valid_session
        mood.reload
        expect(assigns(:mood).name).to eq(new_name)
        expect(assigns(:mood).description).to eq(new_description)
      end

      it "assigns the requested mood as @mood" do
        mood = Mood.create! valid_attributes
        put :update, {:id => mood.to_param, :mood => new_attributes}, valid_session
        expect(assigns(:mood)).to eq(mood)
      end

      it "redirects to the mood" do
        mood = Mood.create! valid_attributes
        put :update, {:id => mood.to_param, :mood => new_attributes}, valid_session
        expect(response).to redirect_to(mood)
      end
    end

    context "with invalid params" do
      it "assigns the mood as @mood" do
        mood = Mood.create! valid_attributes
        put :update, {:id => mood.to_param, :mood => invalid_attributes}, valid_session
        expect(assigns(:mood)).to eq(mood)
      end

      it "re-renders the 'edit' template" do
        mood = Mood.create! valid_attributes
        put :update, {:id => mood.to_param, :mood => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested mood" do
      mood = Mood.create! valid_attributes
      expect {
        delete :destroy, {:id => mood.to_param}, valid_session
      }.to change(Mood, :count).by(-1)
    end

    it "redirects to the moods list" do
      mood = Mood.create! valid_attributes
      delete :destroy, {:id => mood.to_param}, valid_session
      expect(response).to redirect_to(moods_url)
    end
  end

end
