function a = eligible( v, q )
    if ((v+q)/2>=92 && (v>88 && q>88))
        a = true;
        return;
    else
        a = false;
        return;
end

