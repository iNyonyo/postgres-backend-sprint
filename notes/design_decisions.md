### **RETURNS**

In handling returns, I took them as an order with a negative quantity. Since it is a loss to the company, I designed its return value to be a negative. For the percentage, I made it negative as well to represent the loss.

### **CALCULATIONS**

For the total return value I just summed up every negative total in order. For the percent, I had to use a temporary table so I could perform two calculations then returned the total return divided by total amount multiplied by 100 to two decimal places. I turned return_revenue to numeric so I could get the decimals.