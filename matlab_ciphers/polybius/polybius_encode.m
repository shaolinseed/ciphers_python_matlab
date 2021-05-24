function [ciphertext] = polybius_encode(plaintext) %function called polybius_encode takes input plaintext to output ciphertext

ciphertext = ""; %initializing ciphertext output string
textlength = length(plaintext); %storing message length
grid = ["A", "B", "C", "D", "E"; %creating 5*5 string array used to store alphabet
    "F", "G", "H", "I", "K";
    "L", "M", "N", "O", "P";
    "Q", "R", "S", "T", "U";
    "V", "W", "X", "Y", "Z"
    ];
plaintext = upper(plaintext);


for i =1:textlength %looping through each letter in plaintext
    if(plaintext(i) == "J")
        plaintext(i) = "I";
    end
    findchar = strcmp(grid, plaintext(i)); %comparing current letter and grid to find position of current letter
    [row, column] = find(findchar == 1); %used to store index of current letter in grid
    row = string(row);
    column= string(column);
    ciphertext = append(ciphertext, row + column); %form string
    
end
end