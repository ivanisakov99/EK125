names= char('Harry','Xavier','Sue');
verbs = char('loves','eats');
nouns = char('baseballs','rocks','sushi');
[a b]=size(names);
[c d]=size(verbs);
[e f]=size(nouns);
z=randi([1 2]);
x=randi([1 3]);
name=deblank(names(x,:));
verb=deblank(verbs(z,:));
noun=deblank(nouns(x,:));
fprintf('%s %s %s\n',name,verb,noun)