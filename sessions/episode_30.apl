Dyalog APL/W-64 20.0 Unicode - Version 20.0.52966
Serial number: 314159
Thu Jan  1 18:02:47 2026
       [1 2 3
        4 5 6
        7 8 9]
1 2 3
4 5 6
7 8 9
      [1 2
       3 4] + [10 20
               30 40]
11 22
33 44
      [1 2
       3 4] + [10 20
               30 40]
[     
 11 22
 33 44
]     
      [
          11 1 22
          33 2 44
      ]
[       
 11 1 22
 33 2 44
]       
[       
 11 1 22
 33 2 44
] +1      
[       
 12 2 23
 34 3 45
]       
      3 2⍴1 2 0 0 3 4
[   
 1 2
 0 0
 3 4
]   
      ( 1 2 ⋄ 0 0 ⋄ 3 4)
(   
 1 2
 0 0
 3 4
)   
      ⍴( 1 2 ⋄ 0 0 ⋄ 3 4)
(3⋄)
      ( 1 2 ⋄ 0 0 0 ⋄ 3 4)
(     
 1 2  
 0 0 0
 3 4  
)     
      ↑( 1 2 ⋄ 0 0 0 ⋄ 3 4)
[     
 1 2 0
 0 0 0
 3 4 0
]     
      0 4⍴0
0⌿[     
 0 0 0 0
]       
      0 4⍴'a'
0⌿[    
 '    '
]      
       4 0⍴0
[ 
 ⍬
 ⍬
 ⍬
 ⍬
] 
       ↓4 0⍴0
( 
 ⍬
 ⍬
 ⍬
 ⍬
) 
      1 ⎕json ↓4 0⍴0
'[[],[],[],[]]'
      ⎕VFI'1    2 3  4'
(       
 1 1 1 1
 1 2 3 4
)       
      ⎕VFI'1  asa  2 3  4'
(         
 1 0 1 1 1
 1 0 2 3 4
)         
      ⎕VFI'1, asa , 2 ,3 , 4'
(             
 0 0 0 1 0 0 1
 0 0 0 2 0 0 4
)             
      ','⎕VFI'1, asa , 2 ,3 , 4'
(         
 1 0 1 1 1
 1 0 2 3 4
)         
(         
 (1 ⋄ 0 ⋄ 1 ⋄ 1 ⋄ 1)
 (1 ⋄ 0 ⋄ 2 ⋄ 3 ⋄ 4)
)         
(         
 1 0 1 1 1
 1 0 2 3 4
)         
      '⋄'⎕ED'foo'
       2 3 4⍴⎕A
[       
 [      
  'ABCD'
  'EFGH'
  'IJKL'
 ]      
 [      
  'MNOP'
  'QRST'
  'UVWX'
 ]      
]       

      ns←⎕NS⍬
      ns
(
)
      ns
#.[Namespace]
      ns.foo←10
      ns.bar←'hello'
      ns
(           
 bar:'hello'
 foo:10     
)           
      (foo:100 ⋄ bar:200).foo
100
      (foo:100 ⋄ bar:200).(foo+bar)
300
      ⍳10
1 2 3 4 5 6 7 8 9 10
      (⎕IO:0).⍳10
0 1 2 3 4 5 6 7 8 9
      ⎕IO
1
      io0←⎕NS⍬
      io0.⎕IO←0
      io0.⍳10
0 1 2 3 4 5 6 7 8 9
      (⎕IO:0 ⋄ ⎕CT:0).⍳10
0 1 2 3 4 5 6 7 8 9
      Range←{⍳⍵}
      Range 10
1 2 3 4 5 6 7 8 9 10
      Range←{⍳⍵-⍺}
      3Range 10
1 2 3 4 5 6 7
      Range←{⍺+⍳⍵-⍺}
      3Range 10
4 5 6 7 8 9 10
      Range←{⍺,⍺+⍳⍵-⍺}
      3 Range 10
3 4 5 6 7 8 9 10
      4 Range 10
4 5 6 7 8 9 10
      Range←{⍺←0 ⋄ ⍺,⍺+⍳⍵-⍺}
      Range 10
0 1 2 3 4 5 6 7 8 9 10
      Range←{⍵.(from,from+⍳to-from)}
      Range(from:4 ⋄ to:10)
4 5 6 7 8 9 10
      Range←{⍵.(from,from+step×⍳⌊(to-from)÷step)}
      Range(from:4 ⋄ to:10 ⋄ step:2)
4 6 8 10
      Range(from:4 ⋄ to:10)
VALUE ERROR: Undefined name: step
Range[0] Range←{⍵.(from,from+step×⍳⌊(to-from)÷step)}
                                              ∧
      (a:0 ⋄ b:5)⎕NS(a:10)
      ⊢(a:0 ⋄ b:5)⎕NS(a:10)
(    
 a:10
 b:5 
)    
      ⎕NS(a:0 ⋄ b:5)(a:10)
(    
 a:10
 b:5 
)    
      Range←{(⎕NS(from:0 ⋄ step:1)⍵).(from,from+step×⍳⌊(to-from)÷step)}
      Range(from:4 ⋄ to:10 ⋄ step:2)
4 6 8 10
      Range( to:10 ⋄ step:2)
0 2 4 6 8 10
      Range(from:4 ⋄ to:10 ⋄)
4 5 6 7 8 9 10
      Range(to:10 ⋄)
0 1 2 3 4 5 6 7 8 9 10
      Range( ⋄ step:2)
VALUE ERROR: Undefined name: to
Range[0] Range←{(⎕NS(from:0 ⋄ step:1)⍵).(from,from+step×⍳⌊(to-from)÷step)}
                                                           ∧
      ?10
2
      ?0
0.30625186638321467
      ⍳2 3
┌───┬───┬───┐
│1 1│1 2│1 3│
├───┼───┼───┤
│2 1│2 2│2 3│
└───┴───┴───┘
      ⍳10
1 2 3 4 5 6 7 8 9 10
      ⍳,10
1 2 3 4 5 6 7 8 9 10
      ,¨⍳10
┌─┬─┬─┬─┬─┬─┬─┬─┬─┬──┐
│1│2│3│4│5│6│7│8│9│10│
└─┴─┴─┴─┴─┴─┴─┴─┴─┴──┘
      (a:2)∪(b:4)
 #.[Namespace]  #.[Namespace]
      (a:2)∪(b:4)
(    
 (   
  a:2
 )   
 (   
  b:4
 )   
)    
      ∇ Trig arg
[1]  :implements trigger x
[2]  ⎕←'hey, x was changed!'
[3]  ∇
      x←10
'hey, x was changed!'
      2 3 4⍴⍳99
 1  2  3  4
 5  6  7  8
 9 10 11 12

13 14 15 16
17 18 19 20
21 22 23 24
      (foo bar)←⍳2
     () ⍎ 'foo + bar'
⍎VALUE ERROR: Undefined name: bar
      foo+bar
          ∧
      ⎕NS'foo' 'bar'
(     
 bar:2
 foo:1
)     
     (⎕NS'foo' 'bar') ⍎ 'foo + bar'
3
     'foo' 'bar' ⎕NS⍛⍎ 'foo + bar'
3
      fn←+
     'foo' 'bar' 'fn'⎕NS⍛⍎ 'foo fn bar'
3
     'foo' 'bar' ⎕NS⍛⍎ 'foo bar'
1 2
     ns←(⎕NS'foo' 'bar') 
     'foo' 'bar' ⎕NS⍛⍎ 'foo' 'bar'
DOMAIN ERROR
      'foo' 'bar'⎕NS⍛⍎'foo' 'bar'
                    ∧
      ns
(     
 bar:2
 foo:1
)     
      ns⎕VGET'foo' 'bar'
1 2
      +/ns⎕VGET'foo' 'bar'
3
      ÷0
DOMAIN ERROR: Divide by zero
      ÷0
      ∧
      ⎕DMX.InternalLocation
(           
 'scalm.cpp'
 356        
)           
      ⎕DMX⎕VGET ¯2
(                                             
 (                                            
  'Category'                                  
  'General'                                   
 )                                            
 (                                            
  'DM'                                        
  (                                           
   'DOMAIN ERROR'                             
   '      ÷0'                                 
   '      ∧'                                  
  )                                           
 )                                            
 (                                            
  'EM'                                        
  'DOMAIN ERROR'                              
 )                                            
 (                                            
  'EN'                                        
  11                                          
 )                                            
 (                                            
  'ENX'                                       
  1                                           
 )                                            
 (                                            
  'HelpURL'                                   
  'https://docs.dyalog.com/dmx/20.0/General/1'
 )                                            
 (                                            
  'InternalLocation'                          
  (                                           
   'scalm.cpp'                                
   356                                        
  )                                           
 )                                            
 (                                            
  'Message'                                   
  'Divide by zero'                            
 )                                            
 (                                            
  'OSError'                                   
  (                                           
   0                                          
   0                                          
   ''                                         
  )                                           
 )                                            
 (                                            
  'Vendor'                                    
  'Dyalog'                                    
 )                                            
)                                             

      ns←(ABC:10 ⋄ DEF:20)
      ns⎕VGET 2
(      
 [     
  'ABC'
  'DEF'
 ]     
 10 20 
)      
    ⎕C@1⊢  ns⎕VGET 2
(      
 [     
  'abc'
  'def'
 ]     
 10 20 
)      
   ()⎕VSET ⎕C@1⊢  ns⎕VGET 2
   ⊢()⎕VSET ⎕C@1⊢  ns⎕VGET 2
(      
 abc:10
 def:20
)      
       'here' 'be' 'dragons' ⊂⍛⎕NPUT'\t\at.txt'
      ⍝ (f g ⊢)  (⊣ g h) (⊢ g h) (f g ⊣)      
      ⍝ (X f Y) g (h Y)      f g h⍤⊢
      ⍝ C1 C2 C3     (f C1 g)C2(f C3 g)
      ⍳10
1 2 3 4 5 6 7 8 9 10
      'numbers' ⊂⍛, ⍳10
(         
 'numbers'
 1        
 2        
 3        
 4        
 5        
 6        
 7        
 8        
 9        
 10       
)         
      1 2 3 ,∘⊂'numbers'
(         
 1        
 2        
 3        
 'numbers'
)         
      1 1 0 0 1 / 'hello'
'heo'
      1 1 0 0 1 ~⍛/ 'hello'
'll'

      'Hello World'∩⎕A
'HW'
      'code 123'∩⎕D
'123'
      'code 123 4 5 666'∩⎕D,' '
' 123 4 5 666'
      ∊∘⎕D⊢'code 123 4 5A666'
0 0 0 0 0 1 1 1 0 1 0 1 0 1 1 1
      ∊∘⎕D⍛⊆'code 123 4 5A666'
(      
 '123' 
 ('4'⋄)
 ('5'⋄)
 '666' 
)      
      2 3 4⍴⎕A
[       
 [      
  'ABCD'
  'EFGH'
  'IJKL'
 ]      
 [      
  'MNOP'
  'QRST'
  'UVWX'
 ]      
]       
      ↓2 3 4⍴⎕A
[                    
 'ABCD' 'EFGH' 'IJKL'
 'MNOP' 'QRST' 'UVWX'
]                    
      ↓2 3 4⍴⎕A
┌────┬────┬────┐
│ABCD│EFGH│IJKL│
├────┼────┼────┤
│MNOP│QRST│UVWX│
└────┴────┴────┘
      1 3⌷↓2 3 4⍴⎕A
┌────┐
│IJKL│
└────┘
      2⊃'abc' 'def'
def
      2 3⊃'abc' 'def'
f
      (⊂2 3)⊃↓2 3 4⍴⎕A
UVWX
      2 3⊂⍛⊃↓2 3 4⍴⎕A
UVWX
      ⌈\3 1 4 1 5 9 2 6
3 3 4 4 5 9 9 9
      ⌈\⍛=3 1 4 1 5 9 2 6
1 0 1 0 1 1 0 0
      ⌈\⍛=⍛/3 1 4 1 5 9 2 6
3 4 5 9
      ∊∘⎕A⊢'MonkeyRoosterDogPigRatOxTigerRabbitDragonSnakeHorseGoat'
1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0
      ∊∘⎕A⍛⊂'MonkeyRoosterDogPigRatOxTigerRabbitDragonSnakeHorseGoat'
┌──────┬───────┬───┬───┬───┬──┬─────┬──────┬──────┬─────┬─────┬────┐
│Monkey│Rooster│Dog│Pig│Rat│Ox│Tiger│Rabbit│Dragon│Snake│Horse│Goat│
└──────┴───────┴───┴───┴───┴──┴─────┴──────┴──────┴─────┴─────┴────┘
      ⊃4⌽∊∘⎕A⍛⊂'MonkeyRoosterDogPigRatOxTigerRabbitDragonSnakeHorseGoat'
Rat
      <∘0⊢¯2 ¯1 1 2
1 1 0 0
      <∘0⍛+ ⊢ ¯2 ¯1 1 2
¯1 0 1 2
      <∘0⍛+ ¯2 ¯1 1 2
¯1 0 1 2
      {⊃⍵<∘0⍛+⍛⌽∊∘⎕A⍛⊂'MonkeyRoosterDogPigRatOxTigerRabbitDragonSnakeHorseGoat'}2026
Horse
      2≤/2 5 8
1 1
      ∧/2≤/2 5 8
1
      ∧/2≤/2 5 8
1
      (⌽, (-⌊/)) 3 1 4 1 5 
5 1 4 1 3 ¯1
      (⌽,∘-⌊/) 3 1 4 1 5 
5 1 4 1 3 ¯1
      (⌽,{-⌊/⍵}) 3 1 4 1 5 
5 1 4 1 3 ¯1
