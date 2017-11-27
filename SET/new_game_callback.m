function new_game_callback(ho,eventdata)

h = get(ho,'Parent');
d = guidata(h);
d.deck_order = randperm(81);
d.current_board = reshape(d.deck_order(1:12),[3,4]);
d.current_sets = [];
d.deck_position = 13;
set(d.findsets_button,'String','Check for Sets')
set(d.display_text,'String','Let''s play Set!')
set(d.newrow_button,'Enable','on')
set(d.deckstate_text,'String',sprintf('Sets found: 0\nCards in deck: 69'))

for i = 1:3
    for j = 1:4
        set(d.board_handles(i,j),'Visible','on')
        set(d.board_handles(i,j),'cdata',d.deck(d.current_board(i,j)).im_small)
    end
end

guidata(h,d)