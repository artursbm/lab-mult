function varargout = maria_health(varargin)
% MARIA_HEALTH MATLAB code for maria_health.fig
%      MARIA_HEALTH, by itself, creates a new MARIA_HEALTH or raises the existing
%      singleton*.
%
%      H = MARIA_HEALTH returns the handle to a new MARIA_HEALTH or the handle to
%      the existing singleton*.
%
%      MARIA_HEALTH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MARIA_HEALTH.M with the given input arguments.
%
%      MARIA_HEALTH('Property','Value',...) creates a new MARIA_HEALTH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before maria_health_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to maria_health_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help maria_health

% Last Modified by GUIDE v2.5 10-Nov-2019 15:31:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @maria_health_OpeningFcn, ...
                   'gui_OutputFcn',  @maria_health_OutputFcn, ...
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


% --- Executes just before maria_health is made visible.
function maria_health_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to maria_health (see VARARGIN)

% Choose default command line output for maria_health
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes maria_health wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = maria_health_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
