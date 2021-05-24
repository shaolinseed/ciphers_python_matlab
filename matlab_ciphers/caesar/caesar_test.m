clear all;
clc;

%Test encode

plainmessage = 'HELLOMYNAMEISRAHIM';
key = 5;
ciphermessage = caesar_encode(plainmessage, key);

disp(plainmessage);
disp(ciphermessage);

%Test decode
ciphermessage = 'MJQQTRDSFRJNXWFMNR';
key = 5;
plainmessage = caesar_decode(ciphermessage, key);

disp(ciphermessage);
disp(plainmessage);
