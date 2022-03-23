finger { shape:mesh  mesh:'finger/finger_0.obj',  color=[.9 .9 .9], contact}
finger_1 (finger) { shape:mesh  mesh:'finger/finger_1.obj',  color=[.9 .9 .9], contact}
finger_2 (finger) { shape:mesh  mesh:'finger/finger_2.obj',  color=[.9 .9 .9], contact}
finger_3 (finger) { shape:mesh  mesh:'finger/finger_3.obj',  color=[.9 .9 .9], contact, friction:100., fingerTip}


#finger_coll (finger) {  
#    shape:mesh mesh:'../panda/meshes/collision/finger.stl' 
#    color:[ 0.8 0.2 0.2 0.2] noVisual, contact:-2 
#}

#finger_coll1 (finger) {  
#    shape:sphere size:[.02] Q:<t(0.0 0.008 0.045)>
#    color:[ 0.9 0.9 0.9 0.1 ] noVisual, contact:-2 
#}

#finger_coll2 (finger) {  
#    shape:sphere size:[.02] Q:<t(0.0 0.02 0.02)>
#    color:[ 0.9 0.9 0.9 0.1 ] noVisual, contact:-2 
#}

