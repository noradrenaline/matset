function card_toggle_callback(ho,eventdata)
% hObj is the handle of the current pressed button.
% god only knows what eventdata is for a toggle button
% bNum should be the row and column identifier of which button was pressed
% fh will be the figure handle of the overall figure. That will be where
% the guidata is stored.
h = get(ho,'Parent');
d = guidata(h);

togglestate = zeros(size(d.current_board));
for i = 1:size(d.current_board,1)*size(d.current_board,2)
    togglestate(i) = get(d.board_handles(i),'Value');
end

% Let's take care of some possible errors.
if strcmp(get(ho,'Visible'),'off')
    % in this case it was pushed on accident, and we should toggle it back
    % off. I'm not sure this can actually happen but whatev.
    set(ho,'Value',0)
elseif sum(sum(togglestate)) == 3
    % this is the only case in which we have to do something. if
    % sum(togglestate) is only 1 or 2, we don't have to change anything.
    i = find(togglestate);
    [verdict,wrong] = is_a_set(d.deck(d.current_board(i(1))),d.deck(d.current_board(i(2))),d.deck(d.current_board(i(3))));
    if ~verdict
        % deal with the case where a wrong set has been selected
        % numWrong = sum(wrong~='0');
        errStr = 'Not a set: no ';
        needAnd = 0;
        if wrong(1)~='0'
            errStr = [errStr wrong(1)];
            needAnd = 1;
        end
        if wrong(2)~='0'
            if needAnd
                errStr = [errStr ' and no '];
            end
            if wrong(2)=='r'
                errStr = [errStr 'red'];
            elseif wrong(2)=='g'
                errStr = [errStr 'green'];
            else
                errStr = [errStr 'purple'];
            end
            needAnd = 1;
        end
        if wrong(3)~='0'
            if needAnd
                errStr = [errStr ' and no '];
            end
            if wrong(3)=='f'
                errStr = [errStr 'filled'];
            elseif wrong(3)=='o'
                errStr = [errStr 'open'];
            else
                errStr = [errStr 'shaded'];
            end
            needAnd = 1;
        end
        if wrong(4)~='0'
            if needAnd
                errStr = [errStr ' and no '];
            end
            if wrong(4)=='s'
                errStr = [errStr 'squiggle'];
            elseif wrong(4)=='p'
                errStr = [errStr 'pill'];
            else
                errStr = [errStr 'diamond'];
            end
        end
        errStr = [errStr '.'];
        set(d.display_text,'String',errStr)
        pause(1)
        % untoggle the erroneous set:
        for j = 1:3
            set(d.board_handles(i(j)),'Value',0)
        end
        pause(1)
        set(d.display_text,'String','Let''s play Set!')
    else % this is the case in which a set was correctly found. This here gets complicated.
        set(d.display_text,'String','SET~!')
        d.current_sets = [];
        set(d.findsets_button,'String','Check for Sets')
        for j = 1:3
            set(d.board_handles(i(j)),'cdata',[])
            set(d.board_handles(i(j)),'Value',0)
        end
        pause(.3)
        set(d.display_text,'String','Let''s play Set!')
        % okay. Now we must:
        % 1. determine if we deal new cards or reduce the rows.
        % take appropriate action.
        
        if d.deck_position>81 || size(d.current_board,1)*size(d.current_board,2)>12
            % in this case, we do not deal new cards, but instead move
            % cards from the extra rows to the recently vacated holes.
            % In this case we do not need to advance the deck position.
            target = size(d.current_board,1)*size(d.current_board,2)-3;
            if i(3)<=target % in this case we must move all 3 cards, easy:
                for j = 1:3
                    d.current_board(i(j)) = d.current_board(target+j);
                    set(d.board_handles(i(j)),'cdata',d.deck(d.current_board(i(j))).im_small)
                end
            elseif i(2)<=target
                % in this case one (and only one) of the three in the last row is not present
                % most straightforward is to just deal explicitly with each
                % of the 3 possibilites for which card is not present
                if togglestate(target+1)
                    d.current_board(i(1)) = d.current_board(target+2);
                    d.current_board(i(2)) = d.current_board(target+3);
                elseif togglestate(target+2)
                    d.current_board(i(1)) = d.current_board(target+1);
                    d.current_board(i(2)) = d.current_board(target+3);
                else
                    d.current_board(i(1)) = d.current_board(target+1);
                    d.current_board(i(2)) = d.current_board(target+2);
                end
                set(d.board_handles(i(1)),'cdata',d.deck(d.current_board(i(1))).im_small)
                set(d.board_handles(i(2)),'cdata',d.deck(d.current_board(i(2))).im_small)
            elseif i(1)<=target
                % this is the case where one and only one of the holes is
                % getting filled. again the most straightforward (if not
                % the most programmatically terse) way to deal with it is
                % to just look at each case.
                if ~togglestate(target+1)
                    d.current_board(i(1)) = d.current_board(target+1);
                elseif ~togglestate(target+2)
                    d.current_board(i(1)) = d.current_board(target+2);
                else
                    d.current_board(i(1)) = d.current_board(target+3);
                end
                set(d.board_handles(i(1)),'cdata',d.deck(d.current_board(i(1))).im_small)
            end % because if all 3 were on the end we don't need to move anything around.
            % Now we must resize the current_board to reflect the changes we
            % made. We must also make the empty slots invisible.
            d.current_board(:,end) = [];
            for j = 1:3
                set(d.board_handles(target+j),'Visible','off')
            end
        else
            % Okay, so we found a set, and we need to deal out new cards.
            % (There's no funny business with us being out of cards in the
            % deck or having too many on the board.)
            for j = 1:3
                d.current_board(i(j)) = d.deck_order(d.deck_position+j-1);
                set(d.board_handles(i(j)),'cdata',d.deck(d.current_board(i(j))).im_small)
            end
            d.deck_position = d.deck_position+3;
            if d.deck_position>81
                set(d.newrow_button,'Enable','off')
            end
            
        end % This is the end of the if for whether to deal out new cards
        leftindeck = 81-d.deck_position+1;
        setsFound = (81-leftindeck-size(d.current_board,1)*size(d.current_board,2))/3;
        set(d.deckstate_text,'String',sprintf(['Sets found: ' num2str(setsFound) '\nCards in deck: ' num2str(leftindeck)]))
    end % this is the end of the if for whether the set was right or not
end % This is the end of dealing with three clicks. There does not need to
% be any action taken if only two are toggled. Also I don't know how you
% would get more than three toggled; maybe if you clicked during the 1.5
% seconds when it is showing you a set. It will just ignore that as well.

guidata(h,d)
                
                
        
            