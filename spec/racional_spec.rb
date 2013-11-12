require 'rspec'
require './lib/racional.rb'

describe Fraccion do
	
	before :each do
		@a = Fraccion.new(2,4)
		@b = Fraccion.new(3,3)
		@c = Fraccion.new(2,4)
		@d = Fraccion.new(-2,-6)
		@e = Fraccion.new(-4,12)
	end

	it "Debe existir un numerador" do
		@a.numerador.should eq 2
		@b.numerador.should eq 3
	end

	it "Debe existir un denominador" do
		@a.denominador.should eq 4
		@b.denominador.should eq 3
	end

	it "Debe estar en forma reducida" do
		@a.simplificar.to_s.should eq "1/2"
		@b.simplificar.to_s.should eq "1/1"
	end

	it "Debe mostrar la fraccion en la forma a/b" do
		@a.to_s.should eq "2/4"
		@b.to_s.should eq "3/3"
	end

	it "Debe mostrar la fraccion en formato flotante" do
		@a.to_f.should eq 0.5
		@b.to_f.should eq 1.0
	end

	it "Debe comparar dos fracciones con ==" do
		(@a==@b).should eq false
		(@a==@c).should eq true
	end

	it "Debe calcular el valor absoluto" do
	  @d.abs.should eq "2/6"
	  @e.abs.should eq "4/12"
	end

	it "Debe calcular el reciproco" do
	  @a.reciproco.should eq "4/2"
	  @d.reciproco.should eq "-6/-2"
	end

	it "Debe calcular el opuesto" do
	  @c.-@.to_s.should eq "-2/-4"
	  @d.-@.to_s.should eq "2/6"
	  @e.-@.to_s.should eq "4/12"
	end

	it "Debe calcular la suma de 2 fracciones" do
	  (@a+@b).to_s.should eq "3/2"
	end
	
	it "Debe calcular la resta de 2 fracciones" do
	  (@a-@b).to_s.should eq "-1/2"
	end
	
	it "Debe calcular la multiplicacion de 2 fracciones" do
	  (@a*@b).to_s.should eq "1/2"
	end
	
        it "Debe calcular la division de 2 fracciones" do
	  (@a/@b).to_s.should eq "1/2"
	end

	it "Debe comparar si una fraccion es mayor que otra" do
	  (@a>@b).should eq false
	end

	it "Debe comparar si una fraccion es menor que otra" do
	  (@a<@b).should eq true
	end

	it "Debe comparar si una fraccion es mayor o igual que otra" do
	  (@a>=@b).should eq false
	end

	it "Debe comparar si una fraccion es menor o igual que otra" do
	  (@a<=@c).should eq true
	end
        
        it "Debe dar el reciproco de una divison" do
          (@a/@b).reciproco.to_s.should eq "2/1"    
        end
end
