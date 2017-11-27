% The Game of Set is made by whoever. This program is made by Nora Tramm.

load('deck.mat')
h = set_fig;
d = guidata(h);
d.deck = deck;
set(d.display_text,'String','Initializing...')

% change the gorram callbacks, this is rubbish....
set(d.card11,'Callback',{'card_toggle_callback'})
set(d.card12,'Callback',{'card_toggle_callback'})
set(d.card13,'Callback',{'card_toggle_callback'})
set(d.card14,'Callback',{'card_toggle_callback'})
set(d.card15,'Callback',{'card_toggle_callback'})
set(d.card16,'Callback',{'card_toggle_callback'})
set(d.card17,'Callback',{'card_toggle_callback'})
set(d.card21,'Callback',{'card_toggle_callback'})
set(d.card22,'Callback',{'card_toggle_callback'})
set(d.card23,'Callback',{'card_toggle_callback'})
set(d.card24,'Callback',{'card_toggle_callback'})
set(d.card25,'Callback',{'card_toggle_callback'})
set(d.card26,'Callback',{'card_toggle_callback'})
set(d.card27,'Callback',{'card_toggle_callback'})
set(d.card31,'Callback',{'card_toggle_callback'})
set(d.card32,'Callback',{'card_toggle_callback'})
set(d.card33,'Callback',{'card_toggle_callback'})
set(d.card34,'Callback',{'card_toggle_callback'})
set(d.card35,'Callback',{'card_toggle_callback'})
set(d.card36,'Callback',{'card_toggle_callback'})
set(d.card37,'Callback',{'card_toggle_callback'})

set(d.newgame_button,'Callback',{'new_game_callback'})
set(d.newrow_button,'Callback',{'new_row_callback'})
set(d.findsets_button,'Callback',{'find_sets_callback'})

d.board_handles = [d.card11,d.card12,d.card13,d.card14,d.card15,d.card16,d.card17;...
    d.card21,d.card22,d.card23,d.card24,d.card25,d.card26,d.card27;...
    d.card31,d.card32,d.card33,d.card34,d.card35,d.card36,d.card37];
guidata(h,d)

set(d.display_text,'String','Let''s play SET!!!')




