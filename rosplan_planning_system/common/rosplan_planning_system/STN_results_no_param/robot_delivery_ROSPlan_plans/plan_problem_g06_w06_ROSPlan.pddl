0.000: (goto_waypoint robot0 wp0 wp1)  [235.000]
0.000: (goto_waypoint robot1 wp0 wp1)  [235.000]
0.000: (goto_waypoint robot2 wp0 printer1)  [355.000]
235.001: (goto_waypoint robot0 wp1 printer1)  [200.000]
235.001: (goto_waypoint robot1 wp1 printer1)  [200.000]
435.001: (wait_load_at_printer robot2 robot0 printer1)  [15.000]
435.002: (goto_waypoint robot1 printer1 wp2)  [470.000]
450.001: (goto_waypoint robot2 printer1 wp0)  [355.000]
450.001: (goto_waypoint robot0 printer1 wp2)  [470.000]
805.001: (ask_unload robot2 wp0)  [5.000]
810.002: (wait_unload robot2 wp0)  [15.000]
825.002: (goto_waypoint robot2 wp0 wp2)  [355.000]
905.003: (goto_waypoint robot1 wp2 printer0)  [240.000]
920.002: (goto_waypoint robot0 wp2 printer0)  [240.000]
1160.002: (wait_load_at_printer robot1 robot0 printer0)  [15.000]
1175.002: (goto_waypoint robot1 printer0 wp3)  [120.000]
1180.003: (goto_waypoint robot2 wp2 printer0)  [240.000]
1295.002: (ask_unload robot1 wp3)  [5.000]
1300.003: (wait_unload robot1 wp3)  [15.000]
1315.003: (goto_waypoint robot1 wp3 wp1)  [620.000]
1420.003: (wait_load_at_printer robot0 robot2 printer0)  [15.000]
1435.003: (goto_waypoint robot0 printer0 wp2)  [240.000]
1435.003: (goto_waypoint robot2 printer0 wp0)  [355.000]
1675.003: (ask_unload robot0 wp2)  [5.000]
1680.004: (wait_unload robot0 wp2)  [15.000]
1695.004: (goto_waypoint robot0 wp2 printer3)  [300.000]
1790.004: (goto_waypoint robot2 wp0 printer3)  [105.000]
1935.004: (goto_waypoint robot1 wp1 wp0)  [235.000]
1995.004: (wait_load_at_printer robot2 robot0 printer3)  [15.000]
2010.004: (goto_waypoint robot2 printer3 wp1)  [340.000]
2010.004: (goto_waypoint robot0 printer3 wp1)  [340.000]
2350.004: (ask_unload robot2 wp1)  [5.000]
2355.005: (wait_unload robot2 wp1)  [15.000]
