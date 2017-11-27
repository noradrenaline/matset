function new_row_callback(ho,eventdata)
% This function puts out a new row if there are less than seven rows
% already out.
h = get(ho,'Parent');
d = guidata(h);
nCol = size(d.current_board,2);

if nCol<7
    d.current_board = [d.current_board [d.deck_order(d.deck_position);d.deck_order(d.deck_position+1);d.deck_order(d.deck_position+2)]];
    for i = 1:3
        set(d.board_handles(i,nCol+1),'Visible','on')
        set(d.board_handles(i,nCol+1),'cdata',d.deck(d.current_board(i,nCol+1)).im_small)
    end
    d.deck_position = d.deck_position+3;
    leftindeck = 81-d.deck_position+1;
    setsFound = (81-leftindeck-size(d.current_board,1)*size(d.current_board,2))/3;
    set(d.deckstate_text,'String',sprintf(['Sets found: ' num2str(setsFound) '\nCards in deck: ' num2str(leftindeck)]))
    set(d.findsets_button,'String','Check for Sets')
    set(d.display_text,'String','Let''s play Set!')
else
    set(d.display_text,'String','Can''t deal any more rows. Find a set or start new game.')
end
guidata(h,d)