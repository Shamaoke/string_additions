# encoding: utf-8

require 'spec_helper'

describe String do
  describe '#lcolstrip' do
    it 'strips the left column' do
      initial_string = "  один\n два"
      result_string  = " один\nдва"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'strips the left column of a string with blank lines' do
      initial_string = "\n\n  один\n\n два\n\n"
      result_string  = "\n один\n\nдва\n"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'strips the left column of a string with leading and trailing spaces' do
      initial_string = "  \n  один\n два\n  "
      result_string  = " один\nдва"

      initial_string.lcolstrip.should eq(result_string)
    end
  end
end
