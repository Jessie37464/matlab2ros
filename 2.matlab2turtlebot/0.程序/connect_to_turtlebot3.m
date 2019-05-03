%%% øÿ÷∆Turtlebot3‘À∂Ø%%%%

%  setenv('ROS_MASTER_URI','http://192.168.3.197:11311')
%  rosinit

cmdpub = rospublisher('/cmd_vel',rostype.geometry_msgs_Twist)
 
% pause(5)
 
cmdmsg = rosmessage(cmdpub);
 
cmdmsg.Linear.X = 0.1;
 
cmdmsg.Angular.Z = 0.1;
 
send(cmdpub,cmdmsg)
 




