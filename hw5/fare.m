function f = fare( distance, age )

if (distance >0 && distance <1)
    miles = 1;
else
    miles = round (distance);
end

f = 0;

if miles>10
    f = f + (miles-10)*0.1;
    miles = 10;
end
f = f + (miles-1)*0.25 + 2;    
    
if (age<=18 || age>=60)
    f = f*0.8;
end

end

