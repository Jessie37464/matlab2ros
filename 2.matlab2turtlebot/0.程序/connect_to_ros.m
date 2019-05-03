
% chatpub=rospublisher('/talker','std_msgs/String')';
% msg=rosmessage(chatpub);
% msg.Data="hello ,from matlab";
% send(chatpub,msg);
% latchpub=rospublisher('/talker','IsLatching',true);
setenv('ROS_MASTER_URI','http://192.168.3.197:11311')
rosinit

load('matlab2ros.mat');

chatpub=rospublisher('/talker','std_msgs/Float64')';
msg=rosmessage(chatpub);
msg.Data=s;
send(chatpub,msg);
latchpub=rospublisher('/talker','IsLatching',true);
