m = 2048;
n = 512;
[A, d] = testmatrix(m,n,1);
% d is the exact singular values of test matrix A

[error1,s1, vec1] = prototype(A, 5, 1);
[error2,s2, vec2] = prototype(A, 10, 1);
[error3,s3, vec3] = prototype(A, 15, 1);
[error4,s4, vec4] = prototype(A, 20, 1);

figure
plot(1:5, d(1:5), '+', 1:5, s1, 'o', 'LineWidth', 2)
legend('exact', 'prototype')
title('the 5-largest singular values')
figure
plot(1:10, d(1:10), '+', 1:10, s2,'o', 'LineWidth', 2)
legend('exact', 'prototype')
title('the 10-largest singular values')
figure
plot(1:15, d(1:15), '+',1:15, s3,'o', 'LineWidth', 2)
legend('exact', 'prototype')
title('the 15-largest singular values')
figure
plot(1:20, d(1:20,1), '+',1:20, s4,'o', 'LineWidth', 2)
legend('exact', 'prototype')
title('the 20-largest singular values')
