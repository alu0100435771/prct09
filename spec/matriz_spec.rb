require 'rspec'
require './lib/Matriz.rb'

describe Matriz do

	  before :each do
		@a = Matriz.new(2,2,[[2,4],[5,3]])
		@b = Matriz.new(3,3,[[3,5,6],[2,4,7],[4,6,3]])
		@c = Matriz.new(2,3,[[4,6,4],[2,3,3]])
		@d = Matriz.new(3,2,[[2,3],[3,2],[2,2]])
		@e = Matriz.new(2,2,[[4,4],[3,3]])

	  end

    # Comprobacion de que se crea bien la matriz
        describe "Comprobamos el numero de filas y columnas" do
                it " - Filas para una matriz 2x2\n" do
                        @a.fil.should eq(2)
                end
                it " - Columnas de una matriz 2x2\n" do
                        @a.col.should eq(2)
                end
        end
        
        describe "Comprobacion del metodo de conversion a string" do
                it "\n" do
                        @a.to_s.should eq("2 4 \n5 3 \n")
                end

                it "Acceso al elemento [1][1]" do
                        @a.matriz[1][1].should eq(3)
                end

        end

        # Comprobacion de las operaciones de suma y resta de matrices
        describe "Comprobamos la suma y resta de matrices" do
                it " - Suma\n" do
                        @temp = Matriz.new(2,2,[[6,8],[8,6]])
                        @temp2 = @a+@e
                        @temp2.to_s.should eq(@temp.to_s)
                end
                it " - Resta\n" do
                        @temp = Matriz.new(2,2,[[2,0],[-2,0]])
                        @temp2 = @e-@a
                        @temp2.to_s.should eq(@temp.to_s)
                end
        end
        
        # Comprobacion de la multiplicacion
        describe "Comprobamos la multiplicacion" do
                it " Multiplicacion de dos matrices" do
                        @temp = Matriz.new(2,2,[[34,32],[19,18]])
                        @temp2 = @c.*(@d)
                        @temp2.to_s.should eq(@temp.to_s)
                end
                it " Multiplicacion por un escalar" do
                        @temp = Matriz.new(3,2,[[4,6],[6,4],[4,4]])
                        @temp2 = @d.mult(2)
                        @temp2.to_s.should eq(@temp.to_s)
                end

	end
end

