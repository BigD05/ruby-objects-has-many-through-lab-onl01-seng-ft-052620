class Patient

  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end
  def self.all
    @@all 
  end 

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select{ |appointment|
      appointment.patient }
   end

  def doctors
   self.appointments.map { |doctor|
      doctor.appointment}
    end 
   
end