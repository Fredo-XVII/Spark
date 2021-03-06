## this connection to standalone on your machine for Spark

## spark.sql options list:
properties <- SparkR::sql("SET -v")
SparkR::showDF(properties, numRows = 200, truncate = FALSE)

# Testing Spark ----- not needed to run on bigRED

library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))
library(rJava) # didn't need this to get below to work.

# note: did not run Start up file to get this to work...start_up changes the Java directory, don't forget!!!!
sparkR.session(enableHiveSupport = TRUE ,
               master = "local[*]", # master = "yarn", mode = "cluster",
               sparkHome = Sys.getenv("SPARK_HOME") , # this was the missing link!!  
                sparkConfig = list(spark.driver.memory = "10g", spark.executor.memory = "22g", spark.driver.cores = "250",
                                   spark.rpc.message.maxSize = "1024", spark.sql.crossJoin.enabled=TRUE,
                                   spark.sql.shuffle.partitions = "2000",
                                   spark.serializer = "org.apache.spark.serializer.KryoSerializer",
                                   spark.rdd.compress = "true"
                                  spark.sql.warehouse.dir="C:\\Apps\\winutils\\winutils-master\\hadoop-2.7.1")
)
