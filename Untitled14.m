fid = fopen ('C:\Users\PRAMOD SINGH YADAV\Desktop\4 th year project\Project\Project\Dataset.txt', 'rt');
BOW_temp = textscan (fid, '%s');
fclose (fid);
BOW_temp = BOW_temp{1,1};
count = size (BOW_temp, 1);

% Punctuation elimination
for i = 1:count
    temp_word={};
    temp_word = {BOW_temp{i}};
    if (temp_word{1}(end)=='.')||(temp_word{1}(end)=='?')||(temp_word{1}(end)=='!')||(temp_word{1}(end)==',')||(temp_word{1}(end)==';')||(temp_word{1}(end)=='"')||(temp_word{1}(end)=='''')||(temp_word{1}(end)=='(')||(temp_word{1}(end)=='{')||(temp_word{1}(end)=='[')||(temp_word{1}(1)=='"')||(temp_word{1}(1)=='''')||(temp_word{1}(1)==')')||(temp_word{1}(1)=='}')||(temp_word{1}(1)==']')
        temp_word{1} = temp_word{1}(1:end-1);
    end
    BOW_temp{i} = temp_word;
end

count2 = size (BOW_temp,1);
for j = 1:count2
       BOW_temp2{j} = BOW_temp{j}{1};
end

% Elimination of same words

BOW_temp2 = unique(BOW_temp2);

BOW = BOW_temp2;

%Position of ends
k = 1;
l = length(BOW_temp);
%%a = zeros(30);
for i = 1:l
    if BOW_temp{i}{1}=='|'
        a(k)=i;
        k=k+1;
    end
end

%Forming new table
d = cell(267,637);


d{1,2}='horse';d{1,3}='rabbit';d{1,4}='kangaroo';d{1,5}='machine';d{1,6}='colors';d{1,7}='dyes';d{1,8}='blood';d{1,9}='artery';d{1,10}='bus';d{1,11}='police';
d{1,12}='computer';d{1,31}='rain';d{1,13}='film';d{1,32}='headache';d{1,14}='ship';d{1,33}='judge';d{1,15}='apple';d{1,34}='minutes';d{1,16}='draft';d{1,35}='glasses';
d{1,17}='car';d{1,36}='table';d{1,18}='church';d{1,37}='train';d{1,19}='park';d{1,38}='mirror';d{1,20}='supermarket';d{1,39}='streak';d{1,21}='roof';d{1,40}='account';d{1,22}='lawyers';d{1,41}='car';d{1,23}='prisoner';d{1,42}='radio';
d{1,24}='life';d{1,43}='batsman';
d{1,25}='children';d{1,44}='news';
d{1,26}='money';d{1,45}='Minister';
d{1,27}='party';d{1,46}='Light';
d{1,28}='God';d{1,47}='engine';
d{1,29}='ice';d{1,48}='town';
d{1,30}='wall';d{1,49}='bus';
d{1,50}='waiter';
d{1,51}='legs';
d{1,52}='goals';
d{1,53}='evening';
d{1,54}='headache';
d{1,55}='accident';
d{1,56}='book';
d{1,57}='wine';
d{1,58}='movie';
d{1,59}='girl';
d{1,60}='ball';
d{1,61}='news';
d{1,62}='market';
d{1,63}='archers';
d{1,64}='bows';
d{1,65}='show';
d{1,66}='customers';
d{1,67}='chimney';
d{1,68}='window';
d{1,69}='nurse';
d{1,70}='children';
d{1,71}='attack';
d{1,72}='water';
d{1,73}='barrel';
d{1,74}='gun';
d{1,75}='pocket';
d{1,76}='table';
d{1,77}='weapon';
d{1,78}='sand';
d{1,79}='paper';
d{1,80}='company';
d{1,81}='club';
d{1,82}='college';
d{1,83}='phone';
d{1,84}='project';
d{1,85}='dress';
d{1,86}='daughter';
d{1,87}='cake';
d{1,88}='father';
d{1,89}='roof';
d{1,90}='grade';
d{1,91}='wood';
d{1,92}='forest';
d{1,93}='music';
d{1,94}='paper';
d{1,95}='husband';
d{1,96}='sofa';
d{1,97}='computer';
d{1,98}='children';
d{1,99}='umbrella';
d{1,100}='Agra';
d{1,101}='tree';
d{1,102}='army';
d{1,103}='fort';
d{1,104}='hll';
d{1,105}='sugar';
d{1,106}='coffee';
d{1,107}='song';
d{1,108}='tray';
d{1,109}='teacher';
d{1,110}='story';
d{1,111}='mutual-fund';
d{1,112}='morinig';
d{1,113}='cupboard';
d{1,114}='audience';
d{1,115}='test';
d{1,116}='orphanage';
d{1,117}='orphan';
d{1,118}='salmon';
d{1,119}='office';
d{1,120}='GPS';
d{1,121}='socks';
d{1,122}='salesgirl';
d{1,123}='nerve';
d{1,124}='child';
d{1,125}='robbery';
d{1,49}='jury';
d{1,126}='mayor';
d{1,127}='citizens';
d{1,128}='conference';
d{1,129}='dean';
d{1,130}='game';
d{1,131}='rain';
d{1,132}='week';
d{1,133}='fire';
d{1,134}='auctioneer';
d{1,135}='ship';
d{1,136}='Honolulu';
d{1,137}='strike';
d{1,138}='channel';
d{1,139}='election';
d{1,140}='game';
d{1,141}='husband';
d{1,142}='key';
d{1,143}='Galileo';
d{1,144}='earth';
d{1,145}='sun';
d{1,146}='movie';
d{1,147}='victory';
d{1,148}='storm';
d{1,149}='hell';
d{1,150}='drug';
d{1,151}='prince';
d{1,152}='kingdom';
d{1,153}='cigarettes';
d{1,154}='hockey';
d{1,155}='director';

for i=2:267
    d{i}=i-1;
end
e=d'
xlswrite('C:\Users\PRAMOD SINGH YADAV\Desktop\alaska.xlsx',e);


% we did the  tf-idf calculation in excel itself 

numdata=xlsread('C:\Users\PRAMOD SINGH YADAV\Desktop\4 th year project\alaska.xlsx')
[s1,s2,s3]=svd(numdata); 
s4=s1*s2;
sf=s4*s3';
new = sf';
xlswrite('C:\Users\PRAMOD SINGH YADAV\Desktop\4 th year project\Noun after svd.xlsx',sf);