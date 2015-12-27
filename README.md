This simple application tries to plot Poission's Distribution for different labmda (mean) and sample sizes.

ui.R  

The code here takes two inputs

Samples - it is selected by moving the slider bar and the values get selected.
Mean - since mean and standard deviation are same and equal to the Poission distribution parameter lamda I have named it mean. This value is selcted by clicking on the up and down bottons.

It should be noted that the values do not get selected/ passed to server.R until the submit button is pressed. Once the submit button is pressed the values get registered and the parameters are passed to the server.R program.

server.R

Here the values are taken from ui.R and the calculation is done. The 'rpois' function from R is called and the random numbers are generated, decided by sampl argument, which are plotted using the 'plot' function. Through the 'plot' function the color of the lines is decided as red, width is decided as 5 and the plot is in the form of histogram as decided by type = h argument. Also the labeling is done to make it more readable. After this 'plot' function execution the output is passed again to ui.R, through newGraph, where it is called by plotOutput function in the main panel.

It can also be observed that as the number of samples increases the graph tends to be like Normal distribution i.e symmetrical around the mean or the middle axi.

I hope the reviewers get to appreciate the nature of the graph.
