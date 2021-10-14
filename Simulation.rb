#ALBERT BELIER DE DIEU KANDI

# Default code, use or delete...
mod = Sketchup.active_model # Open model
ent = mod.entities # All entities in model
sel = mod.selection # Current selection

width= 36.0
n=10
s=width/ (n+1).to_f


(0..n-1).each { |i|
    UI.start_timer(0.1,false){
    ent.add_face  [0,0,0], [width,0,0] , [width,width,0] ,  [0,width,0] 
   (0..n-1).each { |j|
   
ent.add_circle  [(width-s)-i*s, s+j*s,0] , [0,0,1],
Math::sin(j/ (n-1).to_f*Math::PI)*s / 5.0 + Math::sin(i/ (n-1).to_f*Math::PI)*s / 5.0
 
 }
 mod.active_view.invalidate
  sleep 0.5
 }
}
