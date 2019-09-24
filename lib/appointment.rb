class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def initialize(date, doctor, patient)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end
end