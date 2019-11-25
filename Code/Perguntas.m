function [sPerguntasSintoma,iEscalaSintoma] = Perguntas( iSintomaPrincipal)

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
iNumEscala=2;

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

sPerguntasSintoma=sPerguntas(iSintomaPrincipal,:);
iEscalaSintoma=iEscala(iSintomaPrincipal,:);





