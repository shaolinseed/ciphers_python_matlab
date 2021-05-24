function [ciphertext] = caesar_encode(plaintext, key)

ciphertext = ""; %initialize ciphertext string
alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'; %store alphabet
indexcounter = 0;
messagelength = length(plaintext);
plaintext = upper(plaintext); %convert to upper to avoid confusion with lower case


for i = 1:messagelength %loop through each character in plaintext
    indexcounter = indexcounter + 1;
    
    charidx = strfind(alphabet, plaintext(indexcounter)); %find index position of current character in alphabet
    encodecharidx = charidx + key; %form the new encoded character idx by finding sum of charidx and the given key
    
    if(encodecharidx > 26) %if encoded character index is greater than 26 needs to reset alphabet
        encodecharidx = mod(encodecharidx, 26); %using mod to find encoded character index
        ciphertext = append(ciphertext, alphabet(encodecharidx)); %forming string
    else
        ciphertext = append(ciphertext, alphabet(encodecharidx)); %encoded character index is less than 26 form string
    end
    
    
end

