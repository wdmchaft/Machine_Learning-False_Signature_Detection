function bayesian(training_set, testing_set)
    C1 = find( training_set.y == 1 );
    C2 = find( training_set.y == 2 );
    
    model.Pclass{1} = mlcgmm( training_set.X(:, C1) );
    model.Pclass{2} = mlcgmm( training_set.X(:, C2) );
    model.Prior = [length(C1) length(C2)] / (length(C1) + length(C2));
    
    ypred_training = bayescls(training_set.X, model);
    ypred_testing = bayescls(testing_set.X, model);
end