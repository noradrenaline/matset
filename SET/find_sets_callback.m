function find_sets_callback(ho,eventdata)

% The first time this button is pressed, it checks to tell you whether
% there are any sets in the currently showing cards. The second time, it
% will actually identify a set for you. The text on the button should
% change after one press, and it should also be reset(along with the
% display text) whenever a set is found.

h = get(ho,'Parent');
st = get(ho,'String');

d = guidata(h);

% the function if the button is pressed for the first time
% note: removing sets should reset this button's string to 'Check for Sets'
if strcmp(st,'Check for Sets')
    numCards = size(d.current_board,1)*size(d.current_board,2);
    setFound = 0;
    for i = 1:numCards-2
        for j = i+1:numCards-1
            for k = j+1:numCards
                if is_a_set(d.deck(d.current_board(i)),d.deck(d.current_board(j)),d.deck(d.current_board(k)))
                    thisSet = false(size(d.current_board));
                    thisSet(i) = true;
                    thisSet(j) = true;
                    thisSet(k) = true;
                    d.current_sets = cat(3,d.current_sets,thisSet);
                    setFound = 1;
                end
            end
        end
    end
    if setFound
        set(d.display_text,'String',[num2str(size(d.current_sets,3)) ' set(s) in current board.'])
        set(d.findsets_button,'String','Reveal a set')
    elseif d.deck_position<=81
        set(d.display_text,'String','No sets in current board.')
    else
        set(d.display_text,'String','Game over.')
    end
else
    n = randi(size(d.current_sets,3));
    [i,j] = find(d.current_sets(:,:,n));
    for p = 1:3
        set(d.board_handles(i(p),j(p)),'Value',1)
    end
    pause(1.5)
    for p = 1:3
        set(d.board_handles(i(p),j(p)),'Value',0)
    end
end


guidata(h,d)