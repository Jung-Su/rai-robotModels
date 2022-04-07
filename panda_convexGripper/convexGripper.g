
gripper {}
gripper_vis (gripper) {
 shape:mesh  mesh:'../panda/meshes/visual/hand.ply'  visual, color=[.9 .9 .9]
}

gripper_coll (gripper) {
  shape:mesh  mesh:'../panda/meshes/collision/hand.stl' 
  color:[ 0.8 0.2 0.2 0.2 ] noVisual, contact:-2
}

gripper>finger_joint1 (gripper) {Q:<t(0 .0 0.0584)>}
finger_joint1 (gripper>finger_joint1) {joint:transY, limits: [.0 0.05]}
finger1_1 (finger_joint1) {shape:mesh,  mesh:'finger/finger_0.obj', visual, color=[.9 .9 .9]}
finger1_2 (finger_joint1) {shape:mesh,  mesh:'finger/finger_1.obj', visual, color=[.9 .9 .9]}
finger1_3 (finger_joint1) {shape:mesh,  mesh:'finger/finger_2.obj', visual, color=[.9 .9 .9]}
finger1 (finger_joint1) {shape:mesh,  mesh:'finger/finger_3.obj', visual, color=[.9 .9 .9], friction:1.} #fingertip

finger1_coll (finger_joint1) {  
    shape:mesh mesh:'../panda/meshes/collision/finger.stl' 
    color:[ 0.8 0.2 0.2 0.2] noVisual, contact:-2 
}


gripper>finger_joint2 (gripper) {Q:<d(180 0 0 1) t(0 .0 0.0584)>}
finger_joint2 (gripper>finger_joint2) {joint:transY, limits: [.0 0.05], mimic:(finger_joint1)}
finger2_1 (finger_joint2) {shape:mesh,  mesh:'finger/finger_0.obj', visual, color=[.9 .9 .9]}
finger2_2 (finger_joint2) {shape:mesh,  mesh:'finger/finger_1.obj', visual, color=[.9 .9 .9]}
finger2_3 (finger_joint2) {shape:mesh,  mesh:'finger/finger_2.obj', visual, color=[.9 .9 .9]}
finger2 (finger_joint2) {shape:mesh,  mesh:'finger/finger_3.obj', visual, color=[.9 .9 .9], friction:1.} #fingertip

finger2_coll (finger_joint2) {  
    shape:mesh mesh:'../panda/meshes/collision/finger.stl' 
    color:[ 0.8 0.2 0.2 0.2] noVisual, contact:-2 
}

Edit finger_joint1 { q:.05 }

gripperCenter (gripper){
    shape:marker, size:[.05], color:[.9 .9 .9],
    Q:<t(0 0 .104) d(-90 0 0 1) d(180 1 0 0)>
}
