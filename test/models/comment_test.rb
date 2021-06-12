# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :text(65535)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#
# Indexes
#
#  index_comments_on_board_id  (board_id)
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#
require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
