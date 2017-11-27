function varargout = set_fig(varargin)
% SET_FIG MATLAB code for set_fig.fig
%      SET_FIG, by itself, creates a new SET_FIG or raises the existing
%      singleton*.
%
%      H = SET_FIG returns the handle to a new SET_FIG or the handle to
%      the existing singleton*.
%
%      SET_FIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SET_FIG.M with the given input arguments.
%
%      SET_FIG('Property','Value',...) creates a new SET_FIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before set_fig_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to set_fig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help set_fig

% Last Modified by GUIDE v2.5 29-Aug-2013 22:44:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @set_fig_OpeningFcn, ...
                   'gui_OutputFcn',  @set_fig_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before set_fig is made visible.
function set_fig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to set_fig (see VARARGIN)

% Choose default command line output for set_fig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes set_fig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = set_fig_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in card11.
function card11_Callback(hObject, eventdata, handles)
% hObject    handle to card11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card11


% --- Executes on button press in card21.
function card21_Callback(hObject, eventdata, handles)
% hObject    handle to card21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card21


% --- Executes on button press in card31.
function card31_Callback(hObject, eventdata, handles)
% hObject    handle to card31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card31


% --- Executes on button press in card41.
function card41_Callback(hObject, eventdata, handles)
% hObject    handle to card41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card41


% --- Executes on button press in card12.
function card12_Callback(hObject, eventdata, handles)
% hObject    handle to card12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card12


% --- Executes on button press in card22.
function card22_Callback(hObject, eventdata, handles)
% hObject    handle to card22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card22


% --- Executes on button press in card32.
function card32_Callback(hObject, eventdata, handles)
% hObject    handle to card32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card32


% --- Executes on button press in card42.
function card42_Callback(hObject, eventdata, handles)
% hObject    handle to card42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card42


% --- Executes on button press in card13.
function card13_Callback(hObject, eventdata, handles)
% hObject    handle to card13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card13


% --- Executes on button press in card23.
function card23_Callback(hObject, eventdata, handles)
% hObject    handle to card23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card23


% --- Executes on button press in card33.
function card33_Callback(hObject, eventdata, handles)
% hObject    handle to card33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card33


% --- Executes on button press in card43.
function card43_Callback(hObject, eventdata, handles)
% hObject    handle to card43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card43


% --- Executes on button press in card14.
function card14_Callback(hObject, eventdata, handles)
% hObject    handle to card14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card14


% --- Executes on button press in card24.
function card24_Callback(hObject, eventdata, handles)
% hObject    handle to card24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card24


% --- Executes on button press in card34.
function card34_Callback(hObject, eventdata, handles)
% hObject    handle to card34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card34


% --- Executes on button press in card44.
function card44_Callback(hObject, eventdata, handles)
% hObject    handle to card44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card44


% --- Executes on button press in card15.
function card15_Callback(hObject, eventdata, handles)
% hObject    handle to card15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card15


% --- Executes on button press in card25.
function card25_Callback(hObject, eventdata, handles)
% hObject    handle to card25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card25


% --- Executes on button press in card35.
function card35_Callback(hObject, eventdata, handles)
% hObject    handle to card35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card35


% --- Executes on button press in card45.
function card45_Callback(hObject, eventdata, handles)
% hObject    handle to card45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card45


% --- Executes on button press in card16.
function card16_Callback(hObject, eventdata, handles)
% hObject    handle to card16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card16


% --- Executes on button press in card26.
function card26_Callback(hObject, eventdata, handles)
% hObject    handle to card26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card26


% --- Executes on button press in card36.
function card36_Callback(hObject, eventdata, handles)
% hObject    handle to card36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card36


% --- Executes on button press in card46.
function card46_Callback(hObject, eventdata, handles)
% hObject    handle to card46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card46


% --- Executes on button press in card17.
function card17_Callback(hObject, eventdata, handles)
% hObject    handle to card17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card17


% --- Executes on button press in card27.
function card27_Callback(hObject, eventdata, handles)
% hObject    handle to card27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card27


% --- Executes on button press in card37.
function card37_Callback(hObject, eventdata, handles)
% hObject    handle to card37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card37


% --- Executes on button press in card47.
function card47_Callback(hObject, eventdata, handles)
% hObject    handle to card47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of card47


% --- Executes on button press in newgame_button.
function newgame_button_Callback(hObject, eventdata, handles)
% hObject    handle to newgame_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in newrow_button.
function newrow_button_Callback(hObject, eventdata, handles)
% hObject    handle to newrow_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in findsets_button.
function findsets_button_Callback(hObject, eventdata, handles)
% hObject    handle to findsets_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
