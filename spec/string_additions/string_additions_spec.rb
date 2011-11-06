# encoding: utf-8

require 'spec_helper'

describe String do
  describe '#lcolstrip' do
    it 'removes all leading spaces in a line with a minimum quantity of them (n) and n spaces in other lines' do
      initial_string = "  один\n два"
      result_string  = " один\nдва"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'removes a leading and a trailing newline symbol in a whole string' do
      initial_string = "\n\n  один\n\n два\n\n"
      result_string  = "\n один\n\nдва\n"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'removes any quantity of leading and trailing spaces in a whole string' do
      initial_string = "  \n  один\n два\n  "
      result_string  = " один\nдва"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'removes the specified quantity of leading spaces in all lines' do
      initial_string = "      один\n    два"
      result_string  = "    один\n  два"

      initial_string.lcolstrip(2).should eq(result_string)
    end

    it 'doesn\'t make any changes in a string with a line with zero leading spaces' do
      initial_string = "  один\nдва\n   три"
      result_string  = "  один\nдва\n   три"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'removes all leading spaces in a line with a minimum quantity of them (n) and n spaces in other lines, if the specified quantity is larger than n' do
      initial_string = "  один\n два"
      result_string  = " один\nдва"

      initial_string.lcolstrip(2).should eq(result_string)
    end

    it 'removes all leading spaces in a line with a minimum quantity of them (n) and n spaces in other lines, if the specified quantity equals n' do
      initial_string = "  один\n два"
      result_string  = " один\nдва"

      initial_string.lcolstrip(1).should eq(result_string)
    end
  end
end
