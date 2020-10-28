empid<-c(001,002,003,004,005,006,007,008,009,010)
salary<-c(10000, 20000, 24000, 45000, 56000, 90000, 100000, 123000, 78000, 99000)
maritalStatus<-c('bachelor','bachelor','married','married','bachelor','bachelor','married','bachelor','married','married')
dataframe<-data.frame(salary,maritalStatus)
dataframe
boxplot(salary~maritalStatus,data=dataframe,border="red",col='grey')

