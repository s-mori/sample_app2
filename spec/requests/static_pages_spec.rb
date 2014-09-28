#require 'rails_helper'

#RSpec.describe "StaticPages", :type => :request do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      get static_pages_index_path
#      expect(response.status).to be(200)
#    end
#  end
#end

require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    # /static_pages/homeのHomeページにアクセスしたとき"Sample App2"という語を父君でいなければならない
    it "should have the content 'Sample App2'" do
      # Capybaraのvisit機能を使ってブラウザでの/static_pages/homeURLへのアクセスをしミュレーション
      visit '/static_pages/home'
      # Capybaraが提供するpage変数を使って、アクセスした結果のページに正しいコンテンツが表示されているかどうかをテスト
      expect(page).to have_content('Sample App2')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App2 | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App2 | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App2 | About Us")
    end
  end
end