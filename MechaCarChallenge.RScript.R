library("dplyr")
data_mpg <- read.csv('MechaCar_mpg.csv')
colnames(data_mpg)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data_mpg))

suspension <-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- summarize(suspension,mean= mean(PSI),median = median(PSI),variance=var(PSI),SD = sd(PSI),n = n())
lot_summary <-suspension %>% group_by(Manufacturing_Lot) %>% summarize(mean= mean(PSI),median = median(PSI),variance=var(PSI),SD = sd(PSI),n = n(),.groups = 'keep')

t.test(suspension$PSI,mu=1500)

t.test(subset(suspension$PSI,suspension$Manufacturing_Lot == 'Lot1'), mu=1500)
t.test(subset(suspension$PSI,suspension$Manufacturing_Lot == 'Lot2'), mu=1500)
t.test(subset(suspension$PSI,suspension$Manufacturing_Lot == 'Lot3'), mu=1500)