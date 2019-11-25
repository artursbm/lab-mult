function [ ] = setQuestionsParams( hObject, handles, sPerguntasSintoma, iEscalaSintoma )
%SETQUESTIONSPARAMS Summary of this function goes here
%   Detailed explanation goes here
set(handles.PanelQuestions, 'Title', ['Perguntas sobre o Problema:' ' ' get(hObject, 'String')]);
set(handles.TextoPergunta1, 'String', sPerguntasSintoma.Var1);
set(handles.TextoPergunta2, 'String', sPerguntasSintoma.Var2);
set(handles.TextoPergunta3, 'String', sPerguntasSintoma.Var3);
set(handles.TextoPergunta4, 'String', sPerguntasSintoma.Var4);

set(handles.SliderPergunta1, 'Min', iEscalaSintoma(2));
set(handles.SliderPergunta1, 'Max', iEscalaSintoma(1));
theRange = iEscalaSintoma(1) - iEscalaSintoma(2);
steps = [1/theRange, 10/theRange];
set(handles.SliderPergunta1, 'SliderStep', steps);

set(handles.SliderPergunta2, 'Min', iEscalaSintoma(4));
set(handles.SliderPergunta2, 'Max', iEscalaSintoma(3));
theRange = iEscalaSintoma(3) - iEscalaSintoma(4);
steps = [1/theRange, 10/theRange];
set(handles.SliderPergunta2, 'SliderStep', steps);

set(handles.SliderPergunta3, 'Min', iEscalaSintoma(6));
set(handles.SliderPergunta3, 'Max', iEscalaSintoma(5));
theRange = iEscalaSintoma(5) - iEscalaSintoma(6);
steps = [1/theRange, 10/theRange];
set(handles.SliderPergunta3, 'SliderStep', steps);

set(handles.SliderPergunta4, 'Min', iEscalaSintoma(8));
set(handles.SliderPergunta4, 'Max', iEscalaSintoma(7));
theRange = iEscalaSintoma(7) - iEscalaSintoma(8);
steps = [1/theRange, 10/theRange];
set(handles.SliderPergunta4, 'SliderStep', steps);

end

