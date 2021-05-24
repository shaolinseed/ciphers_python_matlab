clear all;
clc;

%Test encode

plainmessage = 'HELLOWHATSGOINGON';
ciphermessage = polybius_encode(plainmessage);

disp(plainmessage);
disp(ciphermessage);


%Test decode

ciphermessage = '2334522311353554244344231512311132153115434351154344113143313444';
plainmessage = polybius_decode(ciphermessage);

disp(ciphermessage);
disp(plainmessage);