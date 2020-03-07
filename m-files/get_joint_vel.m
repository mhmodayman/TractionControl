vrep = remApi('remoteApi');
vrep.simxFinish(-1);

clientID = vrep.simxStart('127.0.0.1', 19999, true, true, 5000, 5);

if (clientID>-1)
    disp('connected')
    [returnCode,rear_left]=vrep.simxGetObjectHandle(clientID,'nakedCar_motorLeft',vrep.simx_opmode_blocking);
    
    for i = 1:200
        [returnCode,vel]=vrep.simxGetObjectFloatParameter(clientID,rear_left,2012,vrep.simx_opmode_streaming);
        pause(0.1)
        disp(vel)
    end
    
    vrep.simxFinish(-1);
end