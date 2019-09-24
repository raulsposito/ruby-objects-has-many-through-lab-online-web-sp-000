class Patient 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.patient == self 
    end
  end
  
  def doctors 
    appointments.map do |appointment|
      appointment.doctor 
    end
  end
  
  def self.all
    @@all 
  end
  
end