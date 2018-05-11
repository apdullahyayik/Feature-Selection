function index = corrSel( data, label )
%CORRSEL    Correlation-based feature selection
%
%                data .................input data matrix (each row is an observetion)
%                label.................ground-truth
%
%USAGE
%                index=corrSel(feature,class)
%	         selected_features=feature(:,index)
%
%EXPLANATION
%		High correlation among features and low correlation between
%		labels negatively affect classifier performance. In other
%		words, features that have low linear relations with other
%		features and high linear relations with labels yield to better
%		performance in terms of accuracy
% 
%                                  Authored by , Apdullah Yayık 2017

C=zeros(1, size(data,2));
for i=1:size(data,2)
    switch isnan(abs(corr(data(:,i), label)))
        case 1
            C(i)=0;
        otherwise 
            C(i)=abs(corr(data(:,i), label));
    end
end
sortedC=sort(C);

index=zeros(1, size(data,2));
for j=0:size(data,2)-1
    p=find(C==sortedC(end-j));
    index(j+1)=p(1);
end
end
