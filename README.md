# *01. World Populations SQL*


## Project Goals
   Here is a dataset of world population by country data from recent years. I tried to answer following questions with sql query.
   
   - What years are covered by the dataset?
   - What is the largest population size for Gabon in this dataset?
   - What were the 10 lowest population countries in 2005?
   - What are all the distinct countries with a population of over 100 million in the year 2010?
   - How many countries in this dataset have the word “Islands” in their name?
   - What is the difference in population between 2000 and 2010 in Indonesia?



# *02. RPA Fraud Detection*


## Project Goals
   Reputable Product Agency (RPA) has started receiving complaints from their credit card processor about fraudulent transactions.
   I tried to answer following assumptions with sql query.
   
   - The finance department noted that some of the fraudulent transactions were recorded as coming from Smokey Bear’s zip code (20252).
   - Finance has also noticed a number of pseudonyms associated with fraudulent transactions.
     The fraudsters thought it would be funny to use ‘Art Vandelay’ for their full name or add a ‘der’ for their middle name.
   - There are some irregularities in the IP addresses where transactions are originating from.
     For example, any IP address beginning with ‘10.’ is reserved for internal use.
   - Users are making fraudulent transactions using a temporary email address service. These services provide a short-lived email that can be verified and then self-destructs.
   - The finance department is looking for a specific transaction. They know that the transaction occurred from an ip address starting with ‘120.’ and their full name starts with ‘John’.



# *03. RPA Customer Segmentation*


## Project Goals
   The marketing department of Reputable Product Agency (RPA) is looking to segment the company users by a number of different criteria. In this context, a segment is a subset of users that meet different conditions. Segments are used to send marketing campaigns to users who meet specific criteria or to measure the performance of specific marketing campaigns. I tried to retrieve data under following circumstances with sql query.
   
   - The marketing department wants to send a Born in the ‘80s email to the appropriate users.
   - We are interested in the cohort of users that signed up prior to May 2017.
   - There was an A/B test performed on users that used cute animal clipart to encourage users to sign up. We’d like to see how the group that was shown ‘bears’ is performing.
   - A total of 4 advertising campaigns were run over this period. There were two sets of ad copy (set 1 and set 2) and both were run on two search engine sites (AAA and BBB). The resulting campaign values are:

     - AAA-1
     - AAA-2
     - BBB-1
     - BBB-2
     
     Lets find all the emails of all users who received a campaign on website BBB.
   - Find all the emails of all users who received ad copy 2 in their campaign.
   - Find the emails for all users who received both a campaign and a test. These users will have non-empty entries in the campaign and test columns.
