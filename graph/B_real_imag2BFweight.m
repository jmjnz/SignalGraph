function grad = B_real_imag2BFweight(future_layers, T)

future_grad = GetFutureGrad(future_layers, {});
[N, nCh] = size(future_grad);
future_grad = reshape(future_grad, N*nCh,1);
grad = [real(future_grad); imag(future_grad)];
grad = repmat(grad, 1, T)/T;

end
