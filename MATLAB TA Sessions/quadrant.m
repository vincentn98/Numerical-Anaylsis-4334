function t = quadrant(x,y)
    %Tells which quadrant the x,y pair is in.
    
    if x == 0 || y == 0
        t = 'Axis';
    elseif x > 0 && y > 0
        t = 'Quadrant 1';
    elseif x > 0 && y < 0
        t = 'Quadrant 4';
    elseif x < 0 && y > 0
        t = 'Quadrant 2';
    else
        t = 'Quadrant 3';
    end
    
end

