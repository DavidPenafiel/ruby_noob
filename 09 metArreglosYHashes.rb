#pruebas no correr
C:\Users\Dave\Desktop\pruebas>irb
irb(main):001:0> a = [1,2,3,4,5,7,8]
=> [1, 2, 3, 4, 5, 7, 8]
irb(main):002:0> a.include? 4
=> true
irb(main):003:0> a.include? 6
=> false
irb(main):004:0> a.map {|i| i * 2}
=> [2, 4, 6, 8, 10, 14, 16]
irb(main):005:0> a
=> [1, 2, 3, 4, 5, 7, 8]
irb(main):006:0> a.map! {|i| i * 2}
=> [2, 4, 6, 8, 10, 14, 16]
irb(main):007:0> a
=> [2, 4, 6, 8, 10, 14, 16]

=> true
irb(main):019:0> 4.even?
=> true
irb(main):020:0> 5.odd?
=> true
irb(main):023:0> a = [1,2,4,5,7,8]
=> [1, 2, 4, 5, 7, 8]
irb(main):024:0> a.map &(:even?)
=> [false, true, true, false, false, true]

# system 'cls'
irb(main):027:0> a.each &(:even?)
=> [1, 2, 4, 5, 7, 8]
#en este caso no funciona porque map sí trae resultados y each solo trae elementos

irb(main):002:0> a = [1,2,3,5,6,7,9,0]
=> [1, 2, 3, 5, 6, 7, 9, 0]
irb(main):010:0> a.reduce(100, :+)
=> 133
irb(main):011:0> a.first
=> 1

irb(main):014:0> a.reduce do |first, second|
irb(main):015:1*   if first > second
irb(main):016:2>     first
irb(main):017:2>   else
irb(main):018:2>     second
irb(main):019:2>   end
irb(main):020:1> end
=> 9
#second no es una instrucción o propiedad puedes reemplazarlo por "segundo" y va a funcionar igual

irb(main):029:0> a
=> [1, 2, 3, 5, 6, 7, 9, 0]
irb(main):031:0> a.select {|i| i < 7}
=> [1, 2, 3, 5, 6, 0]
irb(main):032:0> a.select {|i| i % 2 == 0}
=> [2, 6, 0]
irb(main):033:0> a
=> [1, 2, 3, 5, 6, 7, 9, 0]
irb(main):034:0> a.select! {|i| i % 2 == 0}
=> [2, 6, 0]
irb(main):035:0> a
=> [2, 6, 0]


=> true
irb(main):037:0> a
=> [2, 6, 0]
irb(main):038:0> a.reject {|i| i < 6}
=> [6]
irb(main):039:0> a.reject! {|i| i < 2}
=> [2, 6]
irb(main):040:0> a
=> [2, 6]

irb(main):042:0>  a = [1,2,3,5,6,7,9,0]
=> [1, 2, 3, 5, 6, 7, 9, 0]
irb(main):045:0> a.drop_while {|i| i < 6}
=> [6, 7, 9, 0]

irb(main):057:0> a.any?  {|i| i % 7 == 0}
=> true
irb(main):058:0> a.all?  {|i| i % 7 == 0}
=> false
irb(main):059:0> a.all?  {|i| i < 10}
=> true

irb(main):063:0> a
=> [1, 2, 3, 5, 6, 7, 9, 0]
irb(main):064:0> b
=> [5, 2, 7, 9, 10]
irb(main):065:0> a & b
=> [2, 5, 7, 9]
irb(main):066:0> b * 2
=> [5, 2, 7, 9, 10, 5, 2, 7, 9, 10]
irb(main):067:0> b
=> [5, 2, 7, 9, 10]

irb(main):078:0> b
=> [5, 2, 7, 9, 10]
irb(main):079:0> b * 'y'
=> "5y2y7y9y10"
irb(main):080:0> b.collect {|j| j * j}
=> [25, 4, 49, 81, 100]
irb(main):081:0> b.collect! {|j| j * j}
=> [25, 4, 49, 81, 100]
irb(main):082:0> b
=> [25, 4, 49, 81, 100]

irb(main):085:0> a
=> [1, 2, 3, 5, 6, 7, 9, 0]
irb(main):089:0> a.each_with_index{|idx,val| puts val.to_s + '|' + idx.to_s}
0|1
1|2
2|3
3|5
4|6
5|7
6|9
7|0
=> [1, 2, 3, 5, 6, 7, 9, 0]

irb(main):093:0> b = [1,3,5,[7,9],2,[4,[8]]]
=> [1, 3, 5, [7, 9], 2, [4, [8]]]
irb(main):094:0> b.flatten
=> [1, 3, 5, 7, 9, 2, 4, 8]
irb(main):095:0> b
=> [1, 3, 5, [7, 9], 2, [4, [8]]]
irb(main):096:0> b.flatten!
=> [1, 3, 5, 7, 9, 2, 4, 8]

=> true
irb(main):099:0> has = ['nombre': 'David']
=> [{:nombre=>"David"}]
irb(main):100:0> has = {'nombre': 'David'}
=> {:nombre=>"David"}
irb(main):101:0> has = {nombre: 'David'}
=> {:nombre=>"David"}
irb(main):102:0> has = {:nombre=>'David'}
=> {:nombre=>"David"}
irb(main):103:0> has2 = {apellido: 'Penafiel'}
=> {:apellido=>"David"}
irb(main):105:0> has.merge(has2)
=> {:nombre=>"David", :apellido=>"Penafiel"}
irb(main):108:0> has
=> {:nombre=>"David"}
irb(main):109:0> has.merge!(has2)
=> {:nombre=>"David", :apellido=>"Penafiel"}
irb(main):110:0> has
=> {:nombre=>"David", :apellido=>"Penafiel"}

irb(main):122:0> has.to_a
=> [[:nombre, "David"], [:apellido, "Penafiel"]]
irb(main):124:0> has.flatten
=> [:nombre, "David", :apellido, "Penafiel"]
