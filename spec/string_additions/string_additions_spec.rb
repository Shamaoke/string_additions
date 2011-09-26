# encoding: utf-8

require 'spec_helper'

describe String do
  describe '#lcolstrip' do
    it 'strips the left column' do
      initial_string = "\n  one\n two\n"
      result_string  = " one\ntwo"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'strips the left column of a Unicode string' do
      initial_string = "\n  один\n два\n"
      result_string  = " один\nдва"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'strips the left column of a string with blank lines' do
      initial_string = "\n  один\n\n два\n"
      result_string  = " один\n\nдва"

      initial_string.lcolstrip.should eq(result_string)
    end

    it 'strips the left column of a string with trailing spaces' do
      initial_string = "\n  один\n два\n "
      result_string  = " один\nдва"

      initial_string.lcolstrip.should eq(result_string)
    end
  end
end
