Sys.setenv("SPARK_HOME" = "/usr/share/spark-shell") # "/usr/local/")

#finds SparkR in bigRED
library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))

# Create a SparkR session...connecting to Spark on bigRED from the edge node
sparkR.session(appName = "XXXXX" ,
               master = "yarn" ,
               mode = "cluster" ,
               sparkConfig = list(spark.driver.memory = "5g", spark.executor.memory = "25g" ,
                                  spark.driver.cores = "250", spark.rpc.message.maxSize="1024",
                                  spark.sql.crossJoin.enabled=TRUE, spark.sql.shuffle.partitions = "2000",
                                  spark.serializer = "org.apache.spark.serializer.KryoSerializer",
                                  spark.rdd.compress = "true")
               )

# finds Hive Metadata warehouse on bigRED
sparkR.session(enableHiveSupport = TRUE)
}
