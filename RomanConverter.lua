local VALUES = {
    I = 1,
    V = 5,
    X = 10,
    L = 50,
    C = 100,
    D = 500,
    M = 1000,
};

function toArabicNumbers(romanNumber)
    romanNumber = romanNumber:upper(); -- Just in case
    local result = 0;

    local lastRomanNumber = nil;
    for position = romanNumber:len(), 1, -1 do
        local char = romanNumber:sub(position, position);
        
        if lastRomanNumber == nil or VALUES[lastRomanNumber] <= VALUES[char] then
            result = result + VALUES[char];
        else 
            result = result - VALUES[char];
        end
        lastRomanNumber = char;
        
    end

    return result;
end

print(toArabicNumbers("MMMCMXCIX"))