function a = holiday( month, day )

if (month==1 && day==1) || (month==7 && day==4) ||  (month==12 && day==25) ||  (month==12 && day==31)
    a = true;
    return;
else
    a = false;
    return;
end

end

