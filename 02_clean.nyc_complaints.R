nyc_clean <- read_csv("CCRB%20Complaint%20Database%20Raw%2004.20.2021.csv")


mutate(ReceivedDate = mdy(ReceivedDate), 
       IncidentDate = mdy(IncidentDate), 
       CloseDate = mdy(CloseDate))

complaints.filtered <- complaints %>% filter(ReceivedDate >= '2007-01-01' & ReceivedDate <= '2017-12-31')


save(trips, weather, file='trips.RData')