#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Profit for each month
Profit <- revenue - expenses
Profit
#Profit after tax for each month
tax<- round(Profit*0.3,digits = 2)
tax
Profit.after.tax<- Profit-tax
Profit.after.tax
#Profit Margin for each month
Profit.margin <- round(Profit.after.tax/revenue,digits = 2)*100
Profit.margin
#Good months
mean_PAT <- mean(Profit.after.tax)
mean_PAT
Good.months<-Profit.after.tax>mean_PAT
#Bad months
Bad.months<- !Good.months
Bad.months
#Best Month
best.month<-Profit.after.tax==max(Profit.after.tax)
best.month
#Worst Month
worst.month<- Profit.after.tax==min(Profit.after.tax)
worst.month
# Units of thousands
Revenue.1000 = round(revenue/1000)
Expenses.1000=round(expenses/1000)
Profit.1000<-round(Profit/1000)
Profit.after.tax.1000 <- round(Profit.after.tax/1000)
#Matrix
M<- rbind(Revenue.1000,Expenses.1000,Profit.1000,Profit.after.tax.1000,Profit.margin,
          Good.months,Bad.months,best.month,worst.month)
M
colnames(M)<-c("Jan","Feb","Mar","Apr","May","Jun","Jul",
               "Aug","Sep","Oct","Nov","Dec")
M
