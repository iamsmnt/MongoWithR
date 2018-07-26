#project for R and Mongo connection
library(mongolite)
companies_data = read.csv('companies.csv')

names(companies_data)


c  = mongo(collection = "companies", db = 'Datasets')
c$insert(companies_data)


c$distinct("Stage")

purchase_data = read.csv('Data_Purchase.csv')

p = mongo(collection = 'Purchase',db = 'Datasets')
p$insert(purchase_data)

demo = read.csv('TitanicData.csv')




demo_connection = mongo(collection = 'titanic_demo',db = 'Datasets')
demo_connection$insert(demo)



b=mongo.bson.from.demo(demo)