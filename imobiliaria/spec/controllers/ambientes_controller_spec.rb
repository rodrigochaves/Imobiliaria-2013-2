require 'spec_helper'

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

describe AmbientesController do

  # This should return the minimal set of attributes required to create a valid
  # Ambiente. As you add validations to Ambiente, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "descricao" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AmbientesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all ambientes as @ambientes" do
      ambiente = Ambiente.create! valid_attributes
      get :index, {}, valid_session
      assigns(:ambientes).should eq([ambiente])
    end
  end

  describe "GET show" do
    it "assigns the requested ambiente as @ambiente" do
      ambiente = Ambiente.create! valid_attributes
      get :show, {:id => ambiente.to_param}, valid_session
      assigns(:ambiente).should eq(ambiente)
    end
  end

  describe "GET new" do
    it "assigns a new ambiente as @ambiente" do
      get :new, {}, valid_session
      assigns(:ambiente).should be_a_new(Ambiente)
    end
  end

  describe "GET edit" do
    it "assigns the requested ambiente as @ambiente" do
      ambiente = Ambiente.create! valid_attributes
      get :edit, {:id => ambiente.to_param}, valid_session
      assigns(:ambiente).should eq(ambiente)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ambiente" do
        expect {
          post :create, {:ambiente => valid_attributes}, valid_session
        }.to change(Ambiente, :count).by(1)
      end

      it "assigns a newly created ambiente as @ambiente" do
        post :create, {:ambiente => valid_attributes}, valid_session
        assigns(:ambiente).should be_a(Ambiente)
        assigns(:ambiente).should be_persisted
      end

      it "redirects to the created ambiente" do
        post :create, {:ambiente => valid_attributes}, valid_session
        response.should redirect_to(Ambiente.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ambiente as @ambiente" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ambiente.any_instance.stub(:save).and_return(false)
        post :create, {:ambiente => { "descricao" => "invalid value" }}, valid_session
        assigns(:ambiente).should be_a_new(Ambiente)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ambiente.any_instance.stub(:save).and_return(false)
        post :create, {:ambiente => { "descricao" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ambiente" do
        ambiente = Ambiente.create! valid_attributes
        # Assuming there are no other ambientes in the database, this
        # specifies that the Ambiente created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ambiente.any_instance.should_receive(:update).with({ "descricao" => "MyString" })
        put :update, {:id => ambiente.to_param, :ambiente => { "descricao" => "MyString" }}, valid_session
      end

      it "assigns the requested ambiente as @ambiente" do
        ambiente = Ambiente.create! valid_attributes
        put :update, {:id => ambiente.to_param, :ambiente => valid_attributes}, valid_session
        assigns(:ambiente).should eq(ambiente)
      end

      it "redirects to the ambiente" do
        ambiente = Ambiente.create! valid_attributes
        put :update, {:id => ambiente.to_param, :ambiente => valid_attributes}, valid_session
        response.should redirect_to(ambiente)
      end
    end

    describe "with invalid params" do
      it "assigns the ambiente as @ambiente" do
        ambiente = Ambiente.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ambiente.any_instance.stub(:save).and_return(false)
        put :update, {:id => ambiente.to_param, :ambiente => { "descricao" => "invalid value" }}, valid_session
        assigns(:ambiente).should eq(ambiente)
      end

      it "re-renders the 'edit' template" do
        ambiente = Ambiente.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ambiente.any_instance.stub(:save).and_return(false)
        put :update, {:id => ambiente.to_param, :ambiente => { "descricao" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ambiente" do
      ambiente = Ambiente.create! valid_attributes
      expect {
        delete :destroy, {:id => ambiente.to_param}, valid_session
      }.to change(Ambiente, :count).by(-1)
    end

    it "redirects to the ambientes list" do
      ambiente = Ambiente.create! valid_attributes
      delete :destroy, {:id => ambiente.to_param}, valid_session
      response.should redirect_to(ambientes_url)
    end
  end

end
