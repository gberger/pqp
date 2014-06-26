require 'spec_helper'

describe ChatMessage do
  describe 'relations' do
    it { should belong_to(:user) }
    it { should belong_to(:course) }
  end

  describe 'validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:course) }
    it { should validate_presence_of(:text) }
    it { should ensure_length_of(:text).is_at_least(1).is_at_most(512) }
  end
end
