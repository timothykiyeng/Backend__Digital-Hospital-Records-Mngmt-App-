class MedicalHistorySerializer < ActiveModel::Serializer
  attributes :id, :diagnosis, :patient_id
end
