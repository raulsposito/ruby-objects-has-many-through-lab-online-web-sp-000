class Doctor
  
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
  
end
