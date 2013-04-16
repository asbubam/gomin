# encoding : UTF-8
class Problem < ActiveRecord::Base
  attr_accessible :title, :content

	validates :content, :presence => { :messsage => "내용을 입력해 주십시오" }
end
