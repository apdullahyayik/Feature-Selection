# Correlation-based feature selection

                data .................input data matrix (each row is an observetion)
                label.................ground-truth

# Usage
                index=corrSel(feature,class)
	              selected_features=feature(:,index)

# Explanation
                High correlation among features and low correlation between
                labels negatively affect classifier performance. In other
                words, features that have low linear relations with other
                features and high linear relations with labels yield to better
                performance in terms of accuracy
 
                                  Authored by , Apdullah Yayık 2017

