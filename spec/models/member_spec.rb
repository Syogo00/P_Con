require 'rails_helper'

RSpec.describe Member, type: :model do

  it "姓、名、姓カナ、名カナ、誕生年、誕生月、誕生日がある場合、有効である" do

    section = Section.new(
      id: 1,
      section_name: "営業"
      )


    member = Member.new(
    first_name: "tarou",
     last_name: "test",
     first_name_kana: "タロウ",
     last_name_kana: "テスト",
     birth_year: 1,
     birth_month: 2,
     birth_day: 3,
     email: "test@sample.com",
     password: "sample",
     encrypted_password: "sample",
     section: section,
     )

     expect(member).to be_valid
  end

  it "名がない場合、無効である" do

     section = Section.new(
      id: 1,
      section_name: "営業"
      )


    member = Member.new(
    first_name: nil,
     last_name: "test",
     first_name_kana: "タロウ",
     last_name_kana: "テスト",
     birth_year: 1,
     birth_month: 2,
     birth_day: 3,
     email: "test@sample.com",
     password: "sample",
     encrypted_password: "sample",
     section: section,
     )
      member.valid?
     expect(member.errors[:first_name]).to include("を入力してください")
  end


end