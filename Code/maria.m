function varargout = maria(varargin)
% MARIA MATLAB code for maria.fig
%      MARIA, by itself, creates a new MARIA or raises the existing
%      singleton*.
%
%      H = MARIA returns the handle to a new MARIA or the handle to
%      the existing singleton*.
%
%      MARIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MARIA.M with the given input arguments.
%
%      MARIA('Property','Value',...) creates a new MARIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before maria_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to maria_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help maria

% Last Modified by GUIDE v2.5 25-Nov-2019 00:59:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @maria_OpeningFcn, ...
                   'gui_OutputFcn',  @maria_OutputFcn, ...
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


% --- Executes just before maria is made visible.
function maria_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to maria (see VARARGIN)

% Choose default command line output for maria
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes maria wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = maria_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in DorAbdominal.
function DorAbdominal_Callback(hObject, eventdata, handles)
% hObject    handle to DorAbdominal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
set(handles.output, 'UserData', a);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in Alergia.
function Alergia_Callback(hObject, eventdata, handles)
% hObject    handle to Alergia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in AgressaoFisica.
function AgressaoFisica_Callback(hObject, eventdata, handles)
% hObject    handle to AgressaoFisica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in Asma.
function Asma_Callback(hObject, eventdata, handles)
% hObject    handle to Asma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in DorNasCostas.
function DorNasCostas_Callback(hObject, eventdata, handles)
% hObject    handle to DorNasCostas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in MordidasEPicadas.
function MordidasEPicadas_Callback(hObject, eventdata, handles)
% hObject    handle to MordidasEPicadas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in ChemicalExposure.
function ChemicalExposure_Callback(hObject, eventdata, handles)
% hObject    handle to ChemicalExposure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in DorNoPeito.
function DorNoPeito_Callback(hObject, eventdata, handles)
% hObject    handle to DorNoPeito (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in ProblemasDentais.
function ProblemasDentais_Callback(hObject, eventdata, handles)
% hObject    handle to ProblemasDentais (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in Diabetes.
function Diabetes_Callback(hObject, eventdata, handles)
% hObject    handle to Diabetes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in DiarreiaEVomito.
function DiarreiaEVomito_Callback(hObject, eventdata, handles)
% hObject    handle to DiarreiaEVomito (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in ProblemasNoOuvido.
function ProblemasNoOuvido_Callback(hObject, eventdata, handles)
% hObject    handle to ProblemasNoOuvido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in Quedas.
function Quedas_Callback(hObject, eventdata, handles)
% hObject    handle to Quedas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in DorDeCabeca.
function DorDeCabeca_Callback(hObject, eventdata, handles)
% hObject    handle to DorDeCabeca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in DorDeCabeca.
function DorNoPescoco_Callback(hObject, eventdata, handles)
% hObject    handle to DorDeCabeca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );

% --- Executes on button press in DorDeGarganta.
function DorDeGarganta_Callback(hObject, eventdata, handles)
% hObject    handle to DorDeGarganta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(hObject, 'Value');
handles = setAllHandlesOff(handles);
[sPerguntasSintoma,iEscalaSintoma] = Perguntas(a);
set(handles.PanelQuestions, 'Visible', 'on');
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma );


% --- Executes on slider movement.
function SliderPergunta1_Callback(hObject, eventdata, handles)
% hObject    handle to SliderPergunta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.SliderPergunta1, 'Max') == 1 && get(handles.SliderPergunta1, 'Value') == 1)
    set(handles.ValorP1, 'String', 'Sim');
elseif(get(handles.SliderPergunta1, 'Max') == 1 && get(handles.SliderPergunta1, 'Value') == 0)
    set(handles.ValorP1, 'String', 'Nao');
end
    
% set(handles.ValorP1, 'String', get(handles.SliderPergunta1, 'Value'));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function SliderPergunta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderPergunta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



% --- Executes on slider movement.
function SliderPergunta2_Callback(hObject, eventdata, handles)
% hObject    handle to SliderPergunta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorP2, 'String', get(handles.SliderPergunta2, 'Value'));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function SliderPergunta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderPergunta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function SliderPergunta3_Callback(hObject, eventdata, handles)
% hObject    handle to SliderPergunta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorP3, 'String', get(handles.SliderPergunta3, 'Value'));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function SliderPergunta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderPergunta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function SliderPergunta4_Callback(hObject, eventdata, handles)
% hObject    handle to SliderPergunta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorP4, 'String', get(handles.SliderPergunta4, 'Value'));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function SliderPergunta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SliderPergunta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in EnviarButton.
function EnviarButton_Callback(hObject, eventdata, handles)
% hObject    handle to EnviarButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
respostas = [
    get(handles.SliderPergunta1, 'Value'),
    get(handles.SliderPergunta2, 'Value'),
    get(handles.SliderPergunta3, 'Value'),
    get(handles.SliderPergunta4, 'Value')
]';
[result, fMedicoes] = Respostas(get(handles.output, 'UserData'), respostas);
fMedicoes
result
set(handles.ResultPanel, 'Visible', 'on');
set(handles.TemperatureValue, 'String', [num2str(fMedicoes(1)) ' ' 'Celsius']);
set(handles.GlicosisValue, 'String', [num2str(fMedicoes(2)) ' ' 'mgdL']);
set(handles.PressureValue, 'String', [num2str(fMedicoes(3)) ' ' 'mmHg']);
set(handles.OxygenValue, 'String', [num2str(fMedicoes(4)) '%']);
setColorText(handles, result);


% --- Executes on button press in RestartButton.
function RestartButton_Callback(hObject, eventdata, handles)
% hObject    handle to RestartButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelQuestions, 'Visible', 'off');
set(handles.MainPanel, 'Visible', 'on');
set(handles.MordidasEPicadas, 'Visible', 'on');
set(handles.DorAbdominal, 'Visible', 'on');
set(handles.AgressaoFisica, 'Visible', 'on');
set(handles.Asma, 'Visible', 'on');
set(handles.Alergia, 'Visible', 'on');
set(handles.DorNasCostas, 'Visible', 'on');
set(handles.ChemicalExposure, 'Visible', 'on');
set(handles.DorNoPeito, 'Visible', 'on');
set(handles.ProblemasDentais, 'Visible', 'on');
set(handles.DiarreiaEVomito, 'Visible', 'on');
set(handles.ProblemasNoOuvido, 'Visible', 'on');
set(handles.Diabetes, 'Visible', 'on');
set(handles.Quedas, 'Visible', 'on');
set(handles.DorNoPescoco, 'Visible', 'on');
set(handles.DorDeGarganta, 'Visible', 'on');
set(handles.DorDeCabeca, 'Visible', 'on');


function setColorText(handles, result)
if(result == 1)
    set(handles.ColorText, 'String', 'Vermelha');
    set(handles.ColorText, 'BackgroundColor', 'r');
elseif(result == 2)
    set(handles.ColorText, 'String', 'Laranja');
    set(handles.ColorText, 'BackgroundColor', [1 0.5 0]);
elseif(result == 3)
    set(handles.ColorText, 'String', 'Amarela');
    set(handles.ColorText, 'BackgroundColor', 'y');
elseif(result == 4)
    set(handles.ColorText, 'String', 'Verde');
    set(handles.ColorText, 'BackgroundColor', 'g');
end


% --- Executes on button press in Restart2Button.
function Restart2Button_Callback(hObject, eventdata, handles)
% hObject    handle to Restart2Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelQuestions, 'Visible', 'off');
set(handles.ResultPanel, 'Visible', 'off');
set(handles.MainPanel, 'Visible', 'on');
set(handles.MordidasEPicadas, 'Visible', 'on');
set(handles.DorAbdominal, 'Visible', 'on');
set(handles.AgressaoFisica, 'Visible', 'on');
set(handles.Asma, 'Visible', 'on');
set(handles.Alergia, 'Visible', 'on');
set(handles.DorNasCostas, 'Visible', 'on');
set(handles.ChemicalExposure, 'Visible', 'on');
set(handles.DorNoPeito, 'Visible', 'on');
set(handles.ProblemasDentais, 'Visible', 'on');
set(handles.DiarreiaEVomito, 'Visible', 'on');
set(handles.ProblemasNoOuvido, 'Visible', 'on');
set(handles.Diabetes, 'Visible', 'on');
set(handles.Quedas, 'Visible', 'on');
set(handles.DorNoPescoco, 'Visible', 'on');
set(handles.DorDeGarganta, 'Visible', 'on');
set(handles.DorDeCabeca, 'Visible', 'on');