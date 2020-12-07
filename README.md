# Introduction
The coronavirus pandemic affects nations worldwide, responsible for the death of people and profoundly impacting people's daily lives, countries' economies and health systems.
The 'Sistema Único de Saúde' (SUS) is the Brazilian public health system, with the premise that access to health is universal and free for all. Being responsible for centralizing health-related information in the Brazilian territory and due to the legal responsibilities regarding the guarantee of access to information for all citizens, information on the notifications of suspected cases of health was made available in DataSUS (health database). COVID-19.
To make the information available, the .csv format was chosen, however due to its limitation in the number of lines, consequently in the number of possible records, there was a need to adopt subdivision of the information. Separated by state and, as needed, each state has more than one .csv file
In addition to the information from the notifications made by the health units, socioeconomic characteristics of the cities and states were raised, in order to offer subsidies for analyzes with social and economic aspects, information provided by the Brazilian Institute of Geography and Statistics (IBGE).

# Data source
Data regarding notifications of suspected cases are available at:
https://opendatasus.saude.gov.br/dataset/casos-nacionais
Accessed on December 4, 2020.
For the population data of the cities and their relative Gross Domestic Product (GDP) are available at:
https://www.ibge.gov.br/estatisticas/downloads-estatisticas.html

# ETL process
First step was to create a database containing all the information from the notifications, as presented in the file “dicionario-de-data_e-sus-notifica-opendatasus.pdf’, made available by DataSUS itself in SQL SERVER.
From the transformation processes made through Pentaho, they were concentrated on information from all states. The transformation process took place as the file ‘data_ac.ktr’.
The population and GDP information provided by IBGE was loaded directly into SQL Server, importing the excel files available on the website. From these it was possible to create dimension tables:
- DIM_MUNIC: with data from the municipality, state where it is located and population;
- DIM_ESTADO: with the data of the states and their populations;
- DIM_PIB_MUNIC: with identification data of the municipalities and their referred GDP.

# Data dictionary
In the file ‘METADADOS.pdf’ is the dictionary of the data of the created tables.

# Stage COVID-19
So that the visualization layer does not burden the original database and perform better, a Stage database was created as presented in the data dictionary ‘METADADOS.pdf’.
