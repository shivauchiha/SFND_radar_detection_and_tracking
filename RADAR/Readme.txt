Hi have implemented CIFAR 2D algorithm and with my own hyperparameter i was able to bring the output closer to required metric , further suggestion to improve will be helpful.


CIFAR implementation follows these steps .
1.We have two for loops to iterate the CUT within the FFT matrix.
2.We have two more for loops to iterate within the kernel grid with anchor on CUT cell.
3.Except for gaurd cell we convert all fft values to power from db and add into a variable called noise level .
4. Take average by dividing the noise level/number of training cells.
5. Now for given cut cell value check if its greater than avg noise level. If greater equate it to 1 , if no equate it to 1.
6.Now we will be left with unprocessed border cells , equate all of them to zero . This done by checking condition if their value either not 0 or 1 . equate the to zero.
7.Since the signal resolution was 4:1 , i fixed an offset of 1.3 and gaurd cell as (8,2) reflecting same pixel ratio . The Kept increasing the training the training cell my keeping the 4:1 ratio and eventually got the pillar result.



Doubts ?

I enoyed this exercise a lot by i have some doubts regarding this project template . I tried asking people in knowledge centre but sadly no response !

Q1.When we get the mixed signal, we have signal that has information regarding beat frequency. In order to extract this signal we will perform FFT . FFT gives output as beat freq vs power graph.
However in the code instead showing the freq vs power graph we have object range vs power graph why ? Shouldn't it be frequency ? we are even limiting the axis on x which is freq axis [0 200] , I can't understand
logic behind this .

Shouldn't the beat fequency range with highest amplitue be selected and converted it to distance measurement by using beat fre to dist formula ? why is the beat frequency itself shown as range ? does this mean 1hz = 1m if yes , how ? need more explanation. 

Q2. why are we applying 10*log10() for fft2 but not fft1 ? If i apply that function to fft , I am not getting any output.

