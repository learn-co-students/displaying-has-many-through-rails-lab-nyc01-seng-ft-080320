class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def doctor_name=(name)
        self.doctor = Doctor.find_or_create_by(name: name)
      end
   
      def doctor_name
         self.doctor ? self.doctor.name : nil
      end
   
     def patient_name=(name)
       self.patient = Patient.find_or_create_by(name: name)
     end
   
     def patient_name
       self.patient ? self.patient.name : nil
     end
     
end
