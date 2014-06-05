# -*- encoding: utf-8 -*-
require 'spec_helper'

describe Sample do
  let(:sample){ Sample.new }

  describe "#say" do
    describe "Using expect to" do
      let(:greeting){ "Hello" }

      it "should say 'Hello TDD BootCamp!'" do
        expect(sample.say(greeting)).to eq "Hello TDD BootCamp!"
      end
    end

    describe "Using subject it should " do
      subject { sample.say(greeting) }

      let(:greeting){ "Yeah!" }
      it { should eq "Yeah! TDD BootCamp!" }
    end
  end
end
