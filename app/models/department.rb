class Department < ApplicationRecord
  has_many :doctors, dependent: :nullify
end

#department has_many specializations through doctors
