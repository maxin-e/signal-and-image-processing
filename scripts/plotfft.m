% plots amplitude and phase spectra of given fft and frequency:

function[] = plotfft(fft, fq)

L = length(fft);

% WHAT ABOUT THIS?
%P2 = abs(fft/L);
%P1 = P2(1:L/2+1);
%P1(2:end-1) = 2*P1(2:end-1);

% power spectrum (energies)
Pw = abs(fft/L).^2;
Pw(2:end-1) = 2*Pw(2:end-1);

% amplitude spectrum
A = abs(fft/L);
A(2:end-1) = 2*A(2:end-1);

% phase spectrum (angle)
Ph = angle(fft/L);
Ph(2:end-1) = 2*Ph(2:end-1);

f = fq*(0:L-1)/L;
%f = fq*(0:(L/2))/L;

subplot(3,1,1)
plot(f,Pw)
xlabel('frequency (Hz)')
ylabel('energies')
title('power spectrum')
subplot(3,1,2)
plot(f,A)
xlabel('frequency (Hz)')
ylabel('magnitude')
title('amplitude spectrum')
subplot(3,1,3)
plot(f,unwrap(Ph))
xlabel('frequency (Hz)')
ylabel('angle')
title('phase spectrum')



