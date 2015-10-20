FactoryGirl.define do
  factory :image do
    caption "Test Caption"
    upload  Rack::Test::UploadedFile.new(Rails.root + 'spec/test.png', 'image/png')
  end

end
