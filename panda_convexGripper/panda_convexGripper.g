
Include: '../panda/panda.g'

# modify default home pose
Edit panda_joint2 { q= -.5 }
Edit panda_joint4 { q= -2 }
Edit panda_joint7 { q=-.5 }

# delete original gripper
Delete panda_link8>panda_hand_joint
Delete panda_hand_joint
Delete panda_hand_1
Delete panda_hand_0
Delete panda_hand>panda_finger_joint1
Delete panda_hand>panda_finger_joint2
Delete panda_finger_joint1
Delete panda_finger_joint2
Delete panda_leftfinger_1
Delete panda_leftfinger_0
Delete panda_rightfinger_1
Delete panda_rightfinger_0
Delete panda_coll_hand
Delete panda_coll_finger1
Delete panda_coll_finger2

Delete gripper
Delete palm
Delete finger1
Delete finger2

Include 'convexGripper.g'
Edit gripper (panda_joint7) {Q:<t(0.107 0 0.0) d(90 0 1 0) d(-45 0 0 1)>}

