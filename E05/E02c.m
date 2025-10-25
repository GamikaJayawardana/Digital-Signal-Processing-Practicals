b = [4, 3, 2, 0.5, 1.5];
a = [1, 6, 8, 2, 0.6];

p = roots(a);
mag_p = abs(p);

fprintf('Poles:\n'); disp(p);
fprintf('Magnitudes:\n'); disp(mag_p);

if all(mag_p < 1)
    fprintf('\nResult: System is STABLE (all |p| < 1).\n');
elseif any(mag_p > 1)
    fprintf('\nResult: System is UNSTABLE (some |p| > 1).\n');
else
    fprintf('\nResult: MARGINAL (some pole(s) lie on the unit circle: |p| == 1).\n');
end
