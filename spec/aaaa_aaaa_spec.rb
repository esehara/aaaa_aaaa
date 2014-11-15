# -*- coding: utf-8 -*-
require 'spec_helper'

describe AaaaAaaa do
  it 'has a version number' do
    expect(AaaaAaaa::VERSION).not_to be nil
  end

  describe ":: Text" do
    it 'is generate multi string' do
      expect((AaaaAaaa::Text.new("あ") * 5).to_s).to eq "あああああ"
    end
    
    it 'make measure by step' do
      expect((AaaaAaaa::Text.new("あ", step=10) * 10).to_s).to eq(("あ" * 8) + "１０")
    end

    it 'make mesure mul' do
      expect((AaaaAaaa::Text.new("あ", step=10) * 20).to_s)
        .to eq(("あ" * 8) + "１０" + ("あ" * 8) + "２０")
    end
    
    it 'has div' do
      expect((AaaaAaaa::Text.new("あ", step=10) * 13).to_s)
        .to eq(("あ" * 8) + "１０" + "あああ")
    end
    
    it 'multi string' do
      expect((AaaaAaaa::Text.new("□■", step=10) * 10).to_s)
       .to eq(("□■" * 4) + "１０")
    end
   
    it '1000 string eq 1000 length' do
      expect((AaaaAaaa::Text.new("あ", step=10) * 1000).to_s.length)
        .to eq 1000
    end

    it '1127 string eq 1127 length' do
      expect((AaaaAaaa::Text.new("あ", step=10) * 1127).to_s.length)
        .to eq 1127
    end
 
    it 'use prefix' do
      expect((AaaaAaaa::Text.new("あ", step=10, prefix="名前") * 20).to_s)
        .to eq("名前" + ("あ" * 6) + "１０" + "名前" + ("あ" * 6) + "２０")
    end
    
    it 'production mode is raise error' do
      raise_error = false
      begin
        (AaaaAaaa::Text.new("あ", production: true) * 20).to_s
      rescue AaaaAaaa::NotUseAaaaAaaaError
        raise_error = true
      end
      expect(raise_error).to be true
    end
  end
end
