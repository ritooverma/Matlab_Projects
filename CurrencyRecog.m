x = input('Want to add some notes? Enter y or n.','s');

 

 

    ten = 0;

    fifty = 0;

    oneh = 0;

    twoh = 0

    fiveh = 0;

    twoth = 0;

if( x== 'y')

 while(x== 'y')

    fprintf('Please select an image:\n');

 

    [path,~]=imgetfile();

    Im=imread(path);

   

    imshow(Im)

 

 

    g = Im(:,:,2);

    gavg = mean(g(:));

    r = Im(:,:,1);

    ravg = mean(r(:));

    b = Im(:,:,3);

    bavg = mean(b(:));

    

    figure

    img = Im;

    imshow(img)

   

    red = img(:,:,1);

    green = img(:,:,2);

    blue = img(:,:,3);

   

    a = zeros(size(img, 1), size(img, 2));

   

   

    figure(2)   

    subplot(131)

    title('RED LAYER')

    just_red = cat(3, red, a, a);

    imshow(just_red)

   

    subplot(132)

    title('GREEN LAYER')

    just_green = cat(3, a, green, a);

    imshow(just_green)

   

    subplot(133)

    title('BLUE LAYER')

    just_blue = cat(3, a, a, blue);

    imshow(just_blue)

  

   

    tenl = [175,150,120];

    tenu = [190,162,130];

 

    fiftyl = [170,200,180];

    fiftyu = [182,210,190];

 

    onehl = [160,155,170];

    onehu = [170,165,180];

 

    twohl = [207,180,150];

    twohu = [217,190,160];

 

    fivehl = [180,180,160];

    fivehu = [190,190,172];

 

    twothl = [195,165,185];

    twothu = [213,180,200];

 

    if(tenl<[ravg,gavg,bavg]&[ravg,gavg,bavg]<tenu)

        fprintf('10\n');

        ten =ten+1;

   

    elseif(fiftyl<[ravg,gavg,bavg]&[ravg,gavg,bavg]<fiftyu)

        fprintf('50\n');

        fifty =fifty+1;

   

 

    elseif(onehl<[ravg,gavg,bavg]&[ravg,gavg,bavg]<onehu)

        fprintf('100\n');

        oneh=oneh+1;

   

 

    elseif(fivehl<[ravg,gavg,bavg]&[ravg,gavg,bavg]<fivehu)

        fprintf('500\n')

fiveh =fiveh+1;

 

    elseif(twothl<[ravg,gavg,bavg]&[ravg,gavg,bavg]<twothu)

        fprintf('2000\n');

        twoth =twoth+1;

   

 

    elseif(twohl<[ravg,gavg,bavg]&[ravg,gavg,bavg]<twohu)

        fprintf('200\n');

        twoh =twoh+1;

    else

        fprintf('Note not read properly:(');

    end

 

    

x = input('Want to add more notes?\n','s');

 

 

end

 

elseif( x== 'n')

    fprintf('Oh you must! ');

end

total = ((10*ten)+(fifty*50)+(100*oneh)+(200*twoh)+(fiveh*500)+(twoth*2000));

fprintf('Total amount is %d\n',total);