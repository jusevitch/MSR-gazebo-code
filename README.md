# MSR-gazebo-code
Code repository for Gazebo simulation of W-MSR code.

This repository holds all code for the MSR simulations on the Gazebo platform.

Contact info:
  James Usevitch - usevitch@umich.edu
  Ruilin Zhou - ruilinzh@umich.edu

Please contact them with more questions.


# Description
1. Siciliano Method_Matlab Simulation: Some MATLAB tests on Trajectory Tracking based methods from Siciliano's book.

2. heightmap1: The heightmap model used in Gazebo simulation.

3. msr_ws: The ROS workspace

    3.1. src/RCOMV/rcomv_uav: TheROS package of WMSR simulation for UAVs.
  
    3.2. src/RCOMV/rcomv_r1: The ROS package of WMSR simulation for R1 rovers.
    
    
    
# Basic Usage

Three examples of WMSR simulation for UAVs and R1:

  1. Launch 15 UAVs to form a static formation in a world with buildings, with the presence of physical misbehaving agents:
  
  ```
  $ roslaunch rcomv_uav StaticFormation_15agents_BuildingWorld.launch
  ```
  
  2. Launch 15 R1s to form a static formation in a basic world, with the presence of physical misbehaving agents:
  
  ```
  $ roslaunch  rcomv_r1 StaticFormation_15agents.launch
  ```
  
  3. Launch 8 R1s to track a circular trajectory as a formation, with the presence of cyber misbehaving agents:
  
  ```
  $ roslaunch rcomv_r1 circleTraj_circleFormation_8agents_smallWorld.launch
  ```
  
  More ros launch files are available under the launch folders of each package.
  
