require 'rails_helper'

describe 'ログイン前テスト' do
  describe 'トップページのテスト' do
    before do
      visit root_path
    end
    
    context '表示内容の確認' do
      it 'Urlが正しい' do
         expect(current_path).to eq '/'
      end
      it 'ログインリンクが表示されている: '
    end
  end
end