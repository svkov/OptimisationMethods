eps = 0.1;

disp('Покоординатный спуск с дроблением шага');
tic;
xMin = pocoord1(@fx, [5, 5], eps, 0.1);
toc;
fprintf('\n')

disp('Градиентный спуск с дроблением шага');
tic;
xMin = gradient_step_grind(@fx, [2, 2], eps, 0.1, 0.5);
toc;
fprintf('\n')

disp('Градиентный спуск с постоянным шагом');
tic;
xMin = gradient_step_const(@fx, [2, 2], eps);
toc;
fprintf('\n')

disp('Метод расходящегося ряда');
tic;
xMin = diverge_series(@fx, [5, 5], eps);
toc;
fprintf('\n')

disp('МНГС');
tic;
xMin = gradient_mngs(@fx, [1, 1], eps);
toc;
fprintf('\n')

disp('Метод Ньютона');
tic;
x = newton(@fx, [1, 1], eps);
toc;
fprintf('\n')

disp('Метод сопряженных градиентов');
tic;
x = conj_grad(@fx, [1, 1], eps);
toc;
fprintf('\n')