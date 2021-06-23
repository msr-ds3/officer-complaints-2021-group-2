###load data 
nyc_clean <- read_csv("CCRB%20Complaint%20Database%20Raw%2004.20.2021.csv")

###Change Date colombs into date format
nyc_clean <- nyc_clean %>%
mutate(ReceivedDate = mdy(ReceivedDate), 
       IncidentDate = mdy(IncidentDate), 
       CloseDate = mdy(CloseDate)) %>%
  filter(ReceivedDate >= '2007-01-01' & ReceivedDate <= '2017-12-31')

### save nyc_clean
save(nyc_clean, file='nyc_clean.RData')
