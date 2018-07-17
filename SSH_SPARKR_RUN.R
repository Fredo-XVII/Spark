# SSH RUN Script

library(ssh)

# connect
session <- ssh_connect("knox.hadoop.co.com", keyfile = NULL, passwd = .pwd, verbose = FALSE)

# Commands to execute

R_HOME <- '/usr/local/R-FOLDER-ON-HADOOP/bin/Rscript ' # COMMAND LINE FOR EXECUTION
file_path <- '/home_dir/ON/HADOOP/script.R'

# Push commands

ssh_exec_wait(session = session, command = paste(R_HOME, file_path))


ssh_exec_wait(session = session, command = 'pwd')

ssh_disconnect(session)
