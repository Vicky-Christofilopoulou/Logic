%Inialize women and men
woman(helen).
woman(katerina).

man(john).
man(peter).
man(timos).

% Characteristics 
beautiful(helen).

handsome(john).

rich(john).
rich(peter).

muscular(peter).
muscular(timos).

kind(timos).


% Rule 2: If you are rich, you are not happy
happy(X) :- rich(X).

% Rule 3: If a man likes a woman, and the woman likes him back
% then the man is happy.
happy(X) :- man(X), woman(Y), beautiful(Y), likes(X, Y), likes(Y, X).

% Rule 4: If a woman likes a man, and the man likes her back
% then the woman is happy.
happy(Y) :- man(X), woman(Y), likes(X, Y), likes(Y, X).

% Rule 1: All men like beautiful women.
likes(X, Y) :- man(X), woman(Y), beautiful(Y).

% Rule 4: Katerina likes all the men that like her back
likes(katerina, X) :- man(X), likes(X, katerina).

% Rule 5: Helen like men that are kinf and rich or muscular and handsome
likes(helen, X) :- man(X), (kind(X), rich(X); muscular(X), handsome(X)).

