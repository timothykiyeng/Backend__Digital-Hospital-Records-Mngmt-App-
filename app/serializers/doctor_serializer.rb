class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :title, :name, :bio, :department_id, :email, :password_digest
end
