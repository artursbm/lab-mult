clear all;
% Argumentos de entrada
iPergunta=1;
iResposta=[1,2,3,4]';
iSintomaPrincipal=1;

% function [ Resultado,sPerguntas,iEscala] = SintomaPrincipal( iSintomaPrincipal,iResposta )

Tabela=readtable('perguntas.csv', 'FileEncoding', 'UTF-8', 'Delimiter', ',');
sSintomaPrincipal=Tabela(:,1);
sPerguntas(:,1)=Tabela(:,2);
sPerguntas(:,2)=Tabela(:,9);
sPerguntas(:,3)=Tabela(:,16);
sPerguntas(:,4)=Tabela(:,23);
iNumSintomas=max(size(sSintomaPrincipal));
iLimites=zeros(iNumSintomas,16);
iEscala=zeros(iNumSintomas,8);
iNumPerguntas=4;
iNumEscala=4;

for i=1:iNumSintomas
    for j=1:iNumPerguntas
        iLimites(i,j)=table2array(Tabela(i,j+4));
        iLimites(i,j+4)=table2array(Tabela(i,j+11));
        iLimites(i,j+8)=table2array(Tabela(i,j+18));
        iLimites(i,j+12)=table2array(Tabela(i,j+25));
    end
    for k=1:2
        iEscala(i,k)=table2array(Tabela(i,k+2));
        iEscala(i,k+2)=table2array(Tabela(i,k+9));
        iEscala(i,k+4)=table2array(Tabela(i,k+16));
        iEscala(i,k+6)=table2array(Tabela(i,k+23));
    end
end

Resultado=5;
fMinTemperatura=33;
fMaxTemperatura=43;
fTemperatura=fMinTemperatura+normpdf(0.5)*(fMaxTemperatura-fMinTemperatura);
fMinOxigenacao=90;
fMaxOxigenacao=100;
fOxigenacao=fMinOxigenacao+rand*(fMaxOxigenacao-fMinOxigenacao);

if ((fTemperatura>=41)&&(fTemperatura<=35)&&(fOxigenacao<=92))
    Resultado=2;
else
    if ((fTemperatura>=38.5)&&(fOxigenacao<=95))
        Resultado=3;
    end
end


for j=1:iNumPerguntas
    for i=1:Resultado
        if (iResposta(j)>iLimites(iSintomaPrincipal,1+(j-1)*4+i))
            Resultado=i;
            break;
        end
    end
end
SintomaPrincipal=Resultado;







