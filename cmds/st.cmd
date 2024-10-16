# This should be a test or example startup script

require mobilellrf

iocshLoad("$(agilent33220a_DIR)agilent33220a.iocsh", "IP=192.168.10.109,P=LLRF-1:,DEV=FUNCGEN-1,ASYN_PORT=PORT1")

epicsEnvSet ("IOCNAME", "ioc29-llrfmobile")
epicsEnvSet("TOP", "/opt/epics/autosave")
epicsEnvSet("IOCDIR", "llrfmobile")

dbLoadRecords("asynRecord.db","P=$(IOCNAME),R=:asynRec,PORT='PORT1',ADDR='0',IMAX='1024',OMAX='256'")
