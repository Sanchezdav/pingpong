require 'rails_helper'

describe LogGame do
  it { is_expected.to validate_presence_of(:opponent_id) }
  it { is_expected.to validate_presence_of(:day) }
  it { is_expected.to validate_presence_of(:month) }
  it { is_expected.to validate_presence_of(:year) }
end
