class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :birth_date, :email, :password_digest
end
