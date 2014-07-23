require 'egison'

include Egison

class User < Struct.new(:name, :gender, :married, :doctor, :professor)
  def greet
    match(self) do
      with(_[_name,       _,    _,    _, true]) { "Hello, Prof. #{name}!" }
      with(_[_name,       _,    _, true,    _]) { "Hello, Dr. #{name}!" }
      with(_[_name,   :male,    _,    _,    _]) { "Hello, Mr. #{name}!" }
      with(_[_name, :female, true,    _,    _]) { "Hello, Mrs. #{name}!" }
      with(_[_name, :female,    _,    _,    _]) { "Hello, Ms. #{name}!" }
      with(_[_name,       _,    _,    _,    _]) { "Hello, #{name}!" }
    end
  end
end

u1 = User.new("Egi", :male, true, false, false)
p(u1.greet)

u2 = User.new("Nanaka", :girl, false, false, false)
p(u2.greet)

u3 = User.new("Hirai", :male, true, true, false)
p(u3.greet)

u4 = User.new("Hagiya", :male, true, true, true)
p(u4.greet)
