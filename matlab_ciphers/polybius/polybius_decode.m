function [plaintext] = polybius_encode(ciphertext) %function called polybius_encode takes input plaintext to output ciphertext

plaintext = ""; %initializing plaintext output string
textlength = length(ciphertext) / 2; %storing message length
ciphertext(ciphertext == ' ') = [];
grid = ["A", "B", "C", "D", "E"; %creating 5*5 string array used to store alphabet
    "F", "G", "H", "I", "K";
    "L", "M", "N", "O", "P";
    "Q", "R", "S", "T", "U";
    "V", "W", "X", "Y", "Z"
    ];
counter = 1;

for i =1:textlength %looping through
    
    row = ciphertext(counter);
    row = str2num(row);
    counter = counter + 1;
    
    column = ciphertext(counter);
    column = str2num(column);
    counter = counter +1;
    
    if(row == 2 && column == 4)
        plaintext = append(plaintext, "I/J");
    else
        plaintext = append(plaintext, grid(row, column));
    end
    
end
end