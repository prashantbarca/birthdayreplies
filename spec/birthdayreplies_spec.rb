require 'spec_helper'

describe Birthdayreplies do
  it 'has a version number' do
    expect(Birthdayreplies::VERSION).not_to be nil
  end
end
describe Birthdayreplies::Validator do
  it 'validates auth token' do
    expect(Birthdayreplies::Validator.validate_auth_token('ABCD')).to eq(true)
  end
  it 'rejects wrong auth token' do
    expect(Birthdayreplies::Validator.validate_auth_token({})).to eq(false)
  end
  it 'validates keywords' do
    expect(Birthdayreplies::Validator.validate_keywords(['abcd','defg'])).to eq(true)
  end
  it 'rejects wrong keywords - 1' do
    expect(Birthdayreplies::Validator.validate_keywords([1,2])).to eq(false)
  end
  it 'rejects wrong keywords - 2' do
    expect(Birthdayreplies::Validator.validate_keywords(['abcd',2])).to eq(false)
  end
  it 'validates presence of keywords' do
    expect(Birthdayreplies::Validator.validate_options({:auth_token => "abcd"})).to eq(false)
  end
  it 'validates presence of auth_token' do
    expect(Birthdayreplies::Validator.validate_options({:keywords => "Abcd"})).to eq(false)
  end
  it 'validates presence of both auth_token and keywords' do
    expect(Birthdayreplies::Validator.validate_options({:keywords => "Abcd", :auth_token => "defg"})).to eq(true)
  end
  it 'rejects option if not Hash' do
    expect(Birthdayreplies::Validator.validate_options([])).to eq(false)
  end
end
