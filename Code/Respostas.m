function [ iResultado,fMedicoes] = Respostas( iSintomaPrincipal,iResposta )

Tabela=readtable('perguntas.csv', 'FileEncoding', 'UTF-8', 'Delimiter', ',');
sSintomaPrincipal=Tabela(:,1);
iNumSintomas=max(size(sSintomaPrincipal));
iLimites=zeros(iNumSintomas,16);
iEscala=zeros(iNumSintomas,8);
iNumPerguntas=4;
iNumEscala=2;
fPressao=2;

for i=1:iNumSintomas
    for j=1:iNumPerguntas
        iLimites(i,j)=table2array(Tabela(i,j+4));
        iLimites(i,j+4)=table2array(Tabela(i,j+11));
        iLimites(i,j+8)=table2array(Tabela(i,j+18));
        iLimites(i,j+12)=table2array(Tabela(i,j+25));
    end
    for k=1:iNumEscala
        iEscala(i,k)=table2array(Tabela(i,k+2));
        iEscala(i,k+2)=table2array(Tabela(i,k+9));
        iEscala(i,k+4)=table2array(Tabela(i,k+16));
        iEscala(i,k+6)=table2array(Tabela(i,k+23));
    end
end

iResultado=5;
fMinTemperatura=33;
fMaxTemperatura=43;
fTemperatura=fMinTemperatura+rand()*(fMaxTemperatura-fMinTemperatura);
fMinOxigenacao=90;
fMaxOxigenacao=100;
fOxigenacao=fMinOxigenacao+rand()*(fMaxOxigenacao-fMinOxigenacao);
fMinGlicose=1;
fMaxGlicose=25;
fGlicose=fMinGlicose+rand()*(fMaxGlicose-fMinGlicose);

if (fGlicose<=3)
    iResultado=1;
else
    if ((fTemperatura>=41)||(fTemperatura<=35)||(fOxigenacao<=92))
        iResultado=2;
    else
        if ((fTemperatura>=38.5)||(fOxigenacao<=95)||(fGlicose>=17))
            iResultado=3;
        end
    end
end

for j=1:iNumPerguntas
    for i=1:iResultado
        
        if (iResposta(j)>iLimites(iSintomaPrincipal,1+(j-1)*4+i))
            iResultado=i;
            break;
        end
    end
end
fMedicoes(1)=fTemperatura;
fMedicoes(2)=fOxigenacao;
fMedicoes(3)=fGlicose;
fMedicoes(4)=fPressao;


