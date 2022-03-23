
gripper {
  #shape:mesh  mesh:'../panda/meshes/visual/hand.ply'  visual, color=[.9 .9 .9]
}

gripper_vis (gripper) {
 shape:mesh  mesh:'../panda/meshes/visual/hand.ply'  visual, color=[.9 .9 .9]
}

gripper_coll (gripper) {
  #shape: capsule size:[0.18 .03] Q:<t(0.0 0.00 0.04) d(90 1 0 0)> 
  shape:mesh  mesh:'../panda/meshes/collision/hand.stl' 
  color:[ 0.8 0.2 0.2 0.2 ] noVisual, contact:-2
}

finger1 (gripper)  { shape:mesh  mesh:'finger/finger_0.obj',  color=[.9 .9 .9], contact:0,
	  	     joint:transY Q:<> A:<t(0 +.05 0.0584)> limits: [-.05 0.0] color=[.9 .5 .5], finger}
finger1_1 (finger1) { shape:mesh  mesh:'finger/finger_1.obj',  color=[.9 .9 .9], contact:0}
finger1_2 (finger1) { shape:mesh  mesh:'finger/finger_2.obj',  color=[.9 .9 .9], contact:0}
finger1_3 (finger1) { shape:mesh  mesh:'finger/finger_3.obj',  color=[.9 .9 .9], contact:0, friction:1., fingerTip}

finger1_coll (finger1) {  
    shape:mesh mesh:'../panda/meshes/collision/finger.stl' 
    color:[ 0.8 0.2 0.2 0.2] noVisual, contact:-2 
}

finger2 (gripper)  { shape:mesh  mesh:'finger/finger_0.obj',  color=[.9 .9 .9], contact:0,
	  	     joint:transY Q:<> A:<d(180 0 0 1) t(0 +.05 0.0584)> mimic:(finger1) }
finger2_1 (finger2) { shape:mesh  mesh:'finger/finger_1.obj',  color=[.9 .9 .9], contact:0}
finger2_2 (finger2) { shape:mesh  mesh:'finger/finger_2.obj',  color=[.9 .9 .9], contact:0}
finger2_3 (finger2) { shape:mesh  mesh:'finger/finger_3.obj',  color=[.9 .9 .9], contact:0, friction:1., fingerTip}

finger2_coll (finger2) {  
    shape:mesh mesh:'../panda/meshes/collision/finger.stl' 
    color:[ 0.8 0.2 0.2 0.2] noVisual, contact:-2 
}


gripperCenter (gripper){
    shape:marker, size:[.05], color:[.9 .9 .9],
    Q:<t(0 0 .104) d(-90 0 0 1) d(180 1 0 0)>
}
