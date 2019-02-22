class Doctor 
  @@all = []
  
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def new_appointment()
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment. doctor variable = self 
    end 
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patient 
    end
end