function x = move_me( a, s )

if nargin==1
    e = 0;
else
    e = s;
end

x = a(a~=e);
y = a(a==e);
x = horzcat(x,y);

end

