# encoding: utf-8

require 'spec_helper'

describe String do
  describe '#lcolstrip' do
    let(:raw_string) do
      "\n      Эй, жлоб!\n    Где туз?\n        Прячь юных съемщиц в шкаф.\n"
    end

    let(:result) do
      "  Эй, жлоб!\nГде туз?\n    Прячь юных съемщиц в шкаф."
    end

    it 'strips the left column' do
      raw_string.lcolstrip.should eq(result)
    end
  end
end
