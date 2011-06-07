require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
   # def @base_title
      @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'Home'
      response.should be_success
    end

    it "should have the right title" do
      get 'Home'
      response.should have_selector("title",
                        :content => @base_title + " | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'Contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'Contact'
      response.should have_selector("title",
                        :content => @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                        :content => @base_title + " | About")
    end
  end
  
  describe "GET 'Help'" do
    it "should be successful" do
      get 'Help'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'Help'
      response.should have_selector("title",
                        :content => @base_title + " | Help")
    end
  end
end
