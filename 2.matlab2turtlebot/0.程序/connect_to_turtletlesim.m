%%% ¿ØÖÆTurtlesim%%%%

% setenv('ROS_MASTER_URI','http://192.168.3.197:11311')
% rosinit

cmdpub = rospublisher('/turtle1/cmd_vel',rostype.geometry_msgs_Twist)
 
%pause(3) % Wait to ensure publisher is setup
 
cmdmsg = rosmessage(cmdpub);
 
cmdmsg.Linear.X = 10;
 
cmdmsg.Angular.Z = 15;
 
send(cmdpub,cmdmsg)
 

