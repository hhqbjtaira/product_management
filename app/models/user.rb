# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  age        :integer
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
end
