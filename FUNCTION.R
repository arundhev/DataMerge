add_percent <- function(x, multiplier, number_of_digits)
{
  percent <- round(x * multiplier, digits = number_of_digits)
  result <- paste(percent, "%", sep = "")
  # return the calculation. (optional)
  # Since R returns the value of the last line of code
  return(result)
}

#Test this new function out
sample_vector <- c(0.458, 1.6653, 0.83112)
multiple <- 6000
digits <- 1
updated_vector <- add_percent(sample_vector, multiple, digits)
updated_vector

price_calculator <- function (hourly_value, pph = 40){
  #calculate charges as hourly rate x price per hour
  net_price <- hourly_value * pph
 if (hourly_value > 100) {
   net_price <- net_price * 0.9
 }
  
   return(net_price)
}

price_calculator(hourly_value = 300)


#If else statement
price_calculator <- function (hourly_value, pph = 40, public){
  #calculate charges as hourly rate x price per hour
  net_price <- hourly_value * pph
  if (hourly_value > 100) {
    net_price <- net_price * 0.9
  }
  if (public) {
    total_price <- net_price * 1.06
}
 else {
   total_price <- net_price * 1.12
 }
  return(total_price)
}
price_calculator(45, public =  TRUE)
   return(net_price)
  