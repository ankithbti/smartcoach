require File.dirname(__FILE__) + '/../spec_helper'

describe FaqsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Faq.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Faq.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Faq.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(faq_url(assigns[:faq]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Faq.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Faq.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Faq.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Faq.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Faq.first
    response.should redirect_to(faq_url(assigns[:faq]))
  end

  it "destroy action should destroy model and redirect to index action" do
    faq = Faq.first
    delete :destroy, :id => faq
    response.should redirect_to(faqs_url)
    Faq.exists?(faq.id).should be_false
  end
end
