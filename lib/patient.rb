class Patient
attr_reader :name
@@all = []

def initialize(name)
@name = name
@@all << self
end

def new_appointment(doctor, date)
appointment = Appointment.new(date, self, doctor)
end

def appointments
    Appointment.all.select {|a| a.patient == self}
end
def self.all
    @@all
end

def doctors
self.appointments.collect {|a| a.doctor}
end 

end
