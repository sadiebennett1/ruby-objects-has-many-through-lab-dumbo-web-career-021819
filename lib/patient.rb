class Patient
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.select do |appointment|
      appointment.patient == self
    end
  end 
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor 
    end 
  end 
end