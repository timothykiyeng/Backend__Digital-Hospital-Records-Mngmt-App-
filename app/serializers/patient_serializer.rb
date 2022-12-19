class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :birth_date, :email, :diagnosis, :password_digest
end
