# Spark
Anything Spark

# Cheatsheets
 - http://www.kdnuggets.com/2015/07/good-data-science-machine-learning-cheat-sheets.html
 - https://github.com/rstudio/cheatsheets/raw/master/sparklyr.pdf

# SparkR
 - Git Bash Log In: ssh edge.db.co.com -l workid


# PySpark
 - https://medium.com/@rbahaguejr/a-spark-and-hadoop-cheat-sheet-of-an-impatient-data-scientist-c6bfbe90bccd#.jdcuw6s5l
 
# winutils
 - instructions: https://www.linkedin.com/pulse/setting-up-sparkr-windows-machine-ramabhadran-kapistalam/
 - download file: https://github.com/srccodes/hadoop-common-2.2.0-bin/archive/master.zip?lipi=urn%3Ali%3Apage%3Ad_flagship3_pulse_read%3BX3ioGEa2RT67c6PfQFqcRQ%3D%3D

# System Commands/Linux
 - get local host ip - https://stackoverflow.com/questions/14357219/function-for-retrieving-own-ip-address-from-within-r

# General Code
```
# Stop Spark: On top for easy access and because it is really important
sparkR.stop()
Sys.getenv("SPARK_HOME") 
Sys.getenv("HADOOP_CONF_DIR")
Sys.getenv("SPARK_CONF_DIR")
Sys.setenv("SPARK_HOME" = "/usr/share/spark-tgt-2.3.0.") # "/usr/local/")
# finds SparkR in Hadoop
library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))
SparkR.sql()
SparkR.take()
SparkR.collect()
SparkR::createOrReplaceTempView(df,"df_v")
SparkR::persist(df,"MEMORY_AND_DISK")
SparkR::saveAsTable(df, "schema.df", mode = "overwrite)
# Management
properties <- sql("SET -v")
showDF(properties, numRows = 200, truncate = FALSE)
# Standardized Workflow

```
