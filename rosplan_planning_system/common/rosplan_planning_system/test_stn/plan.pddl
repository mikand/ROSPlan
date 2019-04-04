parameter dur_0;
parameter dur_3;
parameter dur_7;
durative-action instance n0 : (do_hover auv wp_auv0 mission_site_start_point_1);
durative-action instance n1 : (complete_mission auv mission2 mission_site_start_point_1);
durative-action instance n2 : (complete_mission auv mission5 mission_site_start_point_1);
durative-action instance n3 : (do_hover auv mission_site_start_point_1 mission_site_start_point_0);
durative-action instance n4 : (dock_auv auv mission_site_start_point_0);
durative-action instance n5 : (recharge auv mission_site_start_point_0);
durative-action instance n6 : (undock_auv auv mission_site_start_point_0);
durative-action instance n7 : (do_hover auv mission_site_start_point_0 mission_site_start_point_1);
durative-action instance n8 : (complete_mission auv mission1 mission_site_start_point_1);
durative-action instance n9 : (complete_mission auv mission4 mission_site_start_point_1);
durative-action instance n10 : (complete_mission auv mission0 mission_site_start_point_1);
durative-action instance n11 : (complete_mission auv mission3 mission_site_start_point_1);
c: n0.end - n0.start in [dur_0,dur_0];
c: n0.start - .zero in [0,0];
c: n1.start - n0.end in [0.001,0.001];
c: n1.end - n1.start in [336,336];
c: n2.start - n1.end in [0.001,0.001];
c: n2.end - n2.start in [337,337];
c: n3.start - n2.end in [0.001,0.001];
c: n3.end - n3.start in [dur_3,dur_3];
c: n4.start - n3.end in [0.001,0.001];
c: n4.end - n4.start in [20,20];
c: n5.start - n4.end in [0.001,0.001];
c: n5.end - n5.start in [1800,1800];
c: n6.start - n5.end in [0.001,0.001];
c: n6.end - n6.start in [10,10];
c: n7.start - n6.end in [0.001,0.001];
c: n7.end - n7.start in [dur_7,dur_7];
c: n8.start - n7.end in [0.001,0.001];
c: n8.end - n8.start in [242,242];
c: n9.start - n8.end in [0.001,0.001];
c: n9.end - n9.start in [340,340];
c: n10.start - n9.end in [0.001,0.001];
c: n10.end - n10.start in [261,261];
c: n11.start - n10.end in [0.001,0.001];
c: n11.end - n11.start in [365,365];