function [plaintext] = vigenere_decode(ciphertext, keyword)

plaintext = "";
alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
textlength = length(ciphertext);
ciphertext = upper(ciphertext);
indexcounter = 0; %used to store the index of the current character we are decoding
keywordidx = 0 ; %used to store the index of the current character in keyword

for i = 1:textlength
    indexcounter = indexcounter + 1;
    keywordidx = keywordidx + 1;
    if(keywordidx > length(keyword)) %repeat keyword if textlength is longer than keyword
        keywordidx = 1;
    end
    
    ciphercharidx = strfind(alphabet, ciphertext(indexcounter)); %used to store index of cipher character in alphabet
    key = strfind(alphabet, keyword(keywordidx)); %used to shift alphabet by the index of the current character in keyword
    decodecharidx = ciphercharidx - key + 1;
    if(decodecharidx == 0)
        decodecharidx = ciphercharidx;
    end
    
    decodecharidx = mod(decodecharidx, 26);
    
    plaintext = append(plaintext, alphabet(decodecharidx)); %form string
    
end
end

