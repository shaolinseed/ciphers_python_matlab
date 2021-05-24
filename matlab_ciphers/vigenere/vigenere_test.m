clear all;
clc;

%Test encode

plainmessage = 'SORROWISKNOWLEDGE';
keyword = 'CELLARDOOR';
ciphermessage = vigenere_encode(plainmessage, keyword);

disp(plainmessage);
disp(ciphermessage);


%Test decode

ciphermessage = 'USCCONLGYEQAWPDXH';
keyword = 'CELLARDOOR';
plainmessage = vigenere_decode(ciphermessage, keyword);

disp(ciphermessage);
disp(plainmessage);



