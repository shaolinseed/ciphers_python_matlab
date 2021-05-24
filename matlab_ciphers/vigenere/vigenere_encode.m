function [ciphertext] = vigenere_encode(plaintext, keyword)

ciphertext = "";
alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
indexcounter = 0; %used to store the index of the current character we are encoding
keywordidx = 0 ; %used to store the index of the current character in keyword
textlength = length(plaintext);
plaintext = upper(plaintext);

for i = 1:textlength
    indexcounter = indexcounter + 1;
    keywordidx = keywordidx + 1;
    if(keywordidx > length(keyword)) %repeat keyword if textlength is longer than keyword
        keywordidx = 1;
    end
    
    plaincharidx = strfind(alphabet, plaintext(indexcounter)); %used to store index of plain character in alphabet
    key = strfind(alphabet, keyword(keywordidx)); %used to shift alphabet by the index of the current character in keyword
    encodecharidx = plaincharidx + key -1; %sum of plaincharidx and key shift -1 as indexing starts at 1 rather than 0
    
    if(encodecharidx > 26) %alphabet reset if encodecharidx is > 26
        encodecharidx = mod(encodecharidx, 26);
        ciphertext = append(ciphertext, alphabet(encodecharidx)); %forms cipher string
    else
        ciphertext = append(ciphertext, alphabet(encodecharidx));
    end
    
end

end

