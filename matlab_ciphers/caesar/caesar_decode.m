function [plaintext] = caesar_decode(ciphertext, key)

plaintext = ""; %initalize plaintext string
alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';%store alphabet
indexcounter = 0;
messagelength = length(ciphertext);
ciphertext = upper(ciphertext); %convert to upper to avoid confusion

for i = 1:messagelength %loop through each character in ciphertext string
    indexcounter = indexcounter + 1; %increment index counter
    
    charidx = strfind(alphabet, ciphertext(indexcounter)); %find position index of current character in alphabet
    decodecharidx = charidx - key; %find the decoded character index by taking key away from the ciphertext index
    
    if(decodecharidx < 0) %if decodecharidx is less than 0 need to loop round to back of alphabet
        decodecharidx = mod(decodecharidx, 26); %mod used to find new decoded character index
        plaintext = append(plaintext, alphabet(decodecharidx)); %form string
    elseif (decodecharidx == 0) %for example letter E index = 5 and key = 5 decodecharidx will = 0 which is not a valid index
        decodecharidx = 26; %set decodecharidx to Z if this happens
        plaintext = append(plaintext, alphabet(decodecharidx)); %form string
    else
        plaintext = append(plaintext, alphabet(decodecharidx)); %form string
    end
    
    
end

