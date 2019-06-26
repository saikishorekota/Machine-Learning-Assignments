library(sigmoid)
sigmoid(3)

#Sigmoid Function
sigmoidfn <- function(a){
  sgm <- 1/(1+exp(-a))
  return(sgm)
}

#Binary Step Activation Function
binary_step_act_fn <- function(a){
  if (a < 0) {res <- 0}
  else {res <- 1}
  return(res)
}


# Creating neuron with inputs , weights and bias
create_neuron <- function(inputs,weights,bias){
  inputs %*% weights + bias
}


# Process neuron output by passing it to binary activation function
neuron_with_binarystep<- function(hidden_layer_input){
  binary_step_act_fn(hidden_layer_input)
}

neuron_with_sigmoid<- function(hidden_layer_input){
  sigmoidfn(hidden_layer_input)
}



Neural_Network <- function (X1,X2){ 
  
# initialize inputs,weights,bias for neurons
  inputs <- matrix( c(X1,X2), ncol=2, byrow=TRUE)
  
# assigning weights hard coded
  weights <- matrix( c(20,20,-20,-20), nrow=2, ncol=2)
  
# assigning bias hard coded
  bias_temp <- matrix(c(-10,30), nrow=1, ncol=2)
  bias <- matrix(rep(bias_temp, each=nrow(input)), ncol=ncol(input))
}

# hidden layer 
hidden_layer_input <- create_neuron(input,weights,bias)
hout <- neuron_with_binarystep(hidden_layer_input)

# intializations of weights and bias of Output layer hard coded
weights_out <- matrix( c(20,20), nrow=2, ncol=1)
bias_out <- -30

# Output layer
output_layer_input <- create_neuron(hout,weights_out,bias_out)
output <- neuron_with_binarystep(output_layer_input)
return (output)





# Input Function
b <- 10
w <- 
Input <- function(b,w,x){
 y <- rep((w[i]*x[i]),length(x))
  Inpfun <- b + sum(y)
  }


#
NeuronSigmoid <- function(x1, x2){
  temph1 <- (20*x1) + (20*x2) - (10)
  temph2 <- (-20*x1) - (20*x2) +30
  h1 <- sigmoidfn(temph1)
  h2 <- sigmoidfn(temph2)
  
  tempInp <- (20*h1) +(20*h2) -30
  Inp <- sigmoidfn(tempInp)
  return(Inp)
}

#Function to depict the input of neuron
Neuronbsa <- function(x1, x2){
  temph1 <- (20*x1) + (20*x2) - (10)
  temph2 <- (-20*x1) - (20*x2) +30
  h1 <- bsafn(temph1)
  h2 <- bsafn(temph2)
  
  tempInp <- (20*h1) +(20*h2) -30
  Inp <- bsafn(tempInp)
  return(Inp)
} 
sigmoidfn(-4)
Neuronbsa(0,0)

#Create a neuron by acitvation function
