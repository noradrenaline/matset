function [verdict wrong] = is_a_set(c1,c2,c3)
% Takes the inputs of the three cards (deck(i), deck(j), deck(k)) and lets
% you know whether it's a set with boolean verdict. If you ask for it,
% wrong will be a 4-vector showing what is missing from each category
% (order: number color shade shape) or a '0' if the set condition is
% satisfied for that category. For the record, the above is string zero,
% not string capital o.

if (c1.number == c2.number && c1.number == c3.number) || ...
        (c1.number ~= c2.number && c1.number ~= c3.number && c2.number ~= c3.number)
    numCh = true;
else
    numCh = false;
end

if (strcmp(c1.color,c2.color) && strcmp(c2.color,c3.color)) || ...
        (~strcmp(c1.color,c2.color) && ~strcmp(c1.color,c3.color) && ~strcmp(c2.color,c3.color))
    colCh = true;
else
    colCh = false;
end

if (strcmp(c1.shade,c2.shade) && strcmp(c2.shade,c3.shade)) || ...
        (~strcmp(c1.shade,c2.shade) && ~strcmp(c1.shade,c3.shade) && ~strcmp(c2.shade,c3.shade))
    shdCh = true;
else
    shdCh = false;
end

if (strcmp(c1.shape,c2.shape) && strcmp(c2.shape,c3.shape)) || ...
        (~strcmp(c1.shape,c2.shape) && ~strcmp(c1.shape,c3.shape) && ~strcmp(c2.shape,c3.shape))
    shpCh = true;
else
    shpCh = false;
end

if numCh && colCh && shdCh && shpCh
    verdict = true;
else
    verdict = false;
end

% now make the wrong vector. it will be a string.

if nargout == 2
    wrong = '0000';
    if ~numCh
        if ~any([c1.number c2.number c3.number]==1)
            wrong(1) = '1';
        elseif ~any([c1.number c2.number c3.number] == 2)
            wrong(1) = '2';
        else
            wrong(1) = '3';
        end
    end
    if ~colCh
        if ~any([c1.color(1) c2.color(1) c3.color(1)] == 'r')
            wrong(2) = 'r';
        elseif ~any([c1.color(1) c2.color(1) c3.color(1)] == 'g')
            wrong(2) = 'g';
        else
            wrong(2) = 'p';
        end
    end
    if ~shdCh
        if ~any([c1.shade(1) c2.shade(1) c3.shade(1)] == 'f')
            wrong(3) = 'f';
        elseif ~any([c1.shade(1) c2.shade(1) c3.shade(1)] == 's')
            wrong(3) = 's';
        else
            wrong(3) = 'o';
        end
    end
    if ~shpCh
        if ~any([c1.shape(1) c2.shape(1) c3.shape(1)] == 's')
            wrong(4) = 's';
        elseif ~any([c1.shape(1) c2.shape(1) c3.shape(1)] == 'd')
            wrong(4) = 'd';
        else
            wrong(4) = 'p';
        end
    end
end
