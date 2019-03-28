## this connection to standalone on your machine for Spark

# Testing Spark ----- not needed to run on bigRED

library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))
library(rJava) # didn't need this to get below to work.

# note: did not run Start up file to get this to work...start_up changes the Java directory, don't forget!!!!
sparkR.session(enableHiveSupport = TRUE ,
               master = "local[*]", 
               sparkHome = Sys.getenv("SPARK_HOME") , # this was the missing link!!
               sparkConfig = list(spark.driver.memory = "2g", spark.sql.crossJoin.enabled=TRUE,
                                  spark.sql.warehouse.dir="C:\\Apps\\winutils\\winutils-master\\hadoop-2.7.1")
)
