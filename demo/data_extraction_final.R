setwd("C:/Mtech_Sem3")
require(RGoogleAnalyticsPremium)

# Authorize the Google Analytics account
# This need not be executed in every session once the token object is created
# and saved
client.id <- "461007622393.apps.googleusercontent.com"
client.secret <- "O6fGQZVzHqh87a1-fF2Gb8xH"
token <- Auth(client.id,client.secret)

# Save the token object for future sessions
save(token,file="./token_files")
load("token_files")

ValidateToken(token)

# Initialize the query parameters
query.list <- Init(end.date = "2015-10-01",
                 metrics = "ga:users,ga:bounces,ga:avgTimeOnSite",
                 start.date = "2014-01-01",
                 title = "Behaviour_visits_and_OS",
                 dimensions = "ga:userType,ga:operatingSystem,ga:landingpagepath",
                 segment = "dynamic::ga:operatingSystem==Android")



# Create the Query Builder object so that the query parameters are validated
ga.query <- QueryBuilder(query.list)


# Specify the google analytics premium account id, webproperty id and view id
# from which you want to query the data
accountid <- "5306665"
webpropertyid <- "UA-5306665-1"
profileid <- "18589878"

# Extracts the unsampled data and stores it in R object (data)

path <- GetFile(ga.query, token, accountid, webpropertyid, profileid)
data <- read.csv(path,header = FALSE,sep = ",",comment.char = "#")
View(data)

