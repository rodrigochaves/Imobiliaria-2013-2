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

describe InteressadosController do

  # This should return the minimal set of attributes required to create a valid
  # Interessado. As you add validations to Interessado, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nome" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InteressadosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all interessados as @interessados" do
      interessado = Interessado.create! valid_attributes
      get :index, {}, valid_session
      assigns(:interessados).should eq([interessado])
    end
  end

  describe "GET show" do
    it "assigns the requested interessado as @interessado" do
      interessado = Interessado.create! valid_attributes
      get :show, {:id => interessado.to_param}, valid_session
      assigns(:interessado).should eq(interessado)
    end
  end

  describe "GET new" do
    it "assigns a new interessado as @interessado" do
      get :new, {}, valid_session
      assigns(:interessado).should be_a_new(Interessado)
    end
  end

  describe "GET edit" do
    it "assigns the requested interessado as @interessado" do
      interessado = Interessado.create! valid_attributes
      get :edit, {:id => interessado.to_param}, valid_session
      assigns(:interessado).should eq(interessado)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Interessado" do
        expect {
          post :create, {:interessado => valid_attributes}, valid_session
        }.to change(Interessado, :count).by(1)
      end

      it "assigns a newly created interessado as @interessado" do
        post :create, {:interessado => valid_attributes}, valid_session
        assigns(:interessado).should be_a(Interessado)
        assigns(:interessado).should be_persisted
      end

      it "redirects to the created interessado" do
        post :create, {:interessado => valid_attributes}, valid_session
        response.should redirect_to(Interessado.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved interessado as @interessado" do
        # Trigger the behavior that occurs when invalid params are submitted
        Interessado.any_instance.stub(:save).and_return(false)
        post :create, {:interessado => { "nome" => "invalid value" }}, valid_session
        assigns(:interessado).should be_a_new(Interessado)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Interessado.any_instance.stub(:save).and_return(false)
        post :create, {:interessado => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested interessado" do
        interessado = Interessado.create! valid_attributes
        # Assuming there are no other interessados in the database, this
        # specifies that the Interessado created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Interessado.any_instance.should_receive(:update).with({ "nome" => "MyString" })
        put :update, {:id => interessado.to_param, :interessado => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested interessado as @interessado" do
        interessado = Interessado.create! valid_attributes
        put :update, {:id => interessado.to_param, :interessado => valid_attributes}, valid_session
        assigns(:interessado).should eq(interessado)
      end

      it "redirects to the interessado" do
        interessado = Interessado.create! valid_attributes
        put :update, {:id => interessado.to_param, :interessado => valid_attributes}, valid_session
        response.should redirect_to(interessado)
      end
    end

    describe "with invalid params" do
      it "assigns the interessado as @interessado" do
        interessado = Interessado.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Interessado.any_instance.stub(:save).and_return(false)
        put :update, {:id => interessado.to_param, :interessado => { "nome" => "invalid value" }}, valid_session
        assigns(:interessado).should eq(interessado)
      end

      it "re-renders the 'edit' template" do
        interessado = Interessado.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Interessado.any_instance.stub(:save).and_return(false)
        put :update, {:id => interessado.to_param, :interessado => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested interessado" do
      interessado = Interessado.create! valid_attributes
      expect {
        delete :destroy, {:id => interessado.to_param}, valid_session
      }.to change(Interessado, :count).by(-1)
    end

    it "redirects to the interessados list" do
      interessado = Interessado.create! valid_attributes
      delete :destroy, {:id => interessado.to_param}, valid_session
      response.should redirect_to(interessados_url)
    end
  end

end