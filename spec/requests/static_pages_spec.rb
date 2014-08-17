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
      expect(page).to have_content('Sample App')
    end
  end
end