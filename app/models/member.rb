class Member < ApplicationRecord
  # presence必須項目
  validates :name, :grade, :classroom, :age, presence: { message: "必須項目です" }
  # validates :team, inclusion: { in: ["は組", "い組", "ろ組"] }
end
