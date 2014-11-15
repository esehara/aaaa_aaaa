# -*- coding: utf-8 -*-
require "aaaa_aaaa/version"

module AaaaAaaa
  
  class NotUseAaaaAaaaError < StandardError; end

  class Text
    def initialize(str, step=nil, prefix="", production: false)
      @value = ""
      
      @str = str
      @step = step
      @prefix = prefix
      @production = production
      if @step
        @nextstep = step
      end
    end
   
    def zenkaku_step
      _use_str = @nextstep.to_s
      hankaku_to_zenkaku = 
        [["0", "０"], ["1", "１"], ["2", "２"],
         ["3", "３"], ["4", "４"], ["5", "５"],
         ["6", "６"], ["7", "７"], ["8", "８"],
         ["9", "９"]]
      hankaku_to_zenkaku.each do |from, to|
        _use_str.gsub! from, to
      end
      _use_str
    end
 
    def prefix_length
      @prefix ? @prefix.length : 0
    end

    def prefix_str
      @prefix || ""
    end

    def line
      step_length = @nextstep.to_s.length - 1
      line_str = prefix_str + (@str * ((@step - (step_length + 1) - (prefix_length)) / @str.length)) + zenkaku_step
      @nextstep += @step
      return line_str
    end

    def *(mul)
      if @step
        @iter = mul / @step
        @iter.times do |x|
          @value += line 
        end
        @value += @str * (mul % @step)
      else
        @value = @str * (mul / @str.length)
      end
      self
    end

    def to_s
      if @production
        raise NotUseAaaaAaaaError, "set procution mode. you must remove AaaaAaaa."
      else
        @value
      end
    end
  end
end
