require 'helper'

class MentionsTest < Test::Unit::TestCase

  context "While linking mentions" do
    
    should "linkup a specific text" do
      text = '@johnny Lorem ipsum dolor sit amet, consectetur adipisicing elit'
      link = Mentions.linkup(text, '/users/\1', '_blank')
      link.should == '@<a href="/users/johnny" target="_blank">johnny</a> Lorem ipsum dolor sit amet, consectetur adipisicing elit'
    end
    
    should "linkup a to Twitter" do
      text = '@johnny_nguyen Lorem ipsum dolor sit amet, consectetur adipisicing elit'
      link = Mentions.linkup(text, 'http://twitter.com/\1', '_blank')
      link.should == '@<a href="http://twitter.com/johnny_nguyen" target="_blank">johnny_nguyen</a> Lorem ipsum dolor sit amet, consectetur adipisicing elit'
    end
  end
  
end
