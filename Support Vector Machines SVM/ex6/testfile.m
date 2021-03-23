function vocabList = getVocabList()
%GETVOCABLIST reads the fixed vocabulary list in vocab.txt and returns a
%cell array of the words
%   vocabList = GETVOCABLIST() reads the fixed vocabulary list in vocab.txt 
%   and returns a cell array of the words in vocabList.



Train1 = load('spamTrain.mat');
Test1 =load('spamTest.mat');
keyboard

%% Read the fixed vocabulary list
FID = fopen('emailSample1.txt');
data = fscanf(FID, '%s',1)
fclose(FID)
%strigData = strings(data{:})
keyboard



namev = readFile('vocab.txt')
pause;
fid = fopen('vocab.txt')


% Store all dictionary words in cell array vocab{}
%n = 1899;  % Total number of words in the dictionary
n = 5
% For ease of implementation, we use a struct to map the strings => integers
% In practice, you'll want to use some form of hashmap
vocabList = cell(n, 1)
pause;
for i = 1:n
    % Word Index (can ignore since it will be = i)
    fscanf(fid, '%d', 1)
    % Actual Word
    vocabList{i} = fscanf(fid, '%s', 1)
    keyboard
end
vocabList
fclose(fid);

end
