 function s = doublevalue2binvalue(x)
 b = (x<0); x = abs(x);
 s = zeros(1,53);
 [f,e] = log2(x);
 for i = 1:53
     f = 2*f;
     d = floor(f);
     f = f - d;
     s(i) = d+48;
 end
 s = ['0.' s sprintf('*2^(%d)',e)];
 if b, s = ['-' s]; end
 s = char(s);