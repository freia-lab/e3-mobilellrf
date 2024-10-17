# This should be a test or example startup script

require mobilellrf

iocshLoad("$(mobilellrf_DIR)mobilellrf.iocsh", "IP_ADDR1=192.168.10.109,PREFIX1=LLRF-1:,DEVICE1=FUNCGEN-1,ASYN_PORT1=PORT1")

epicsEnvSet ("IOCNAME", "ioc29-llrfmobile")
epicsEnvSet("TOP", "/opt/epics/autosave")
epicsEnvSet("IOCDIR", "llrfmobile")

dbLoadRecords("asynRecord.db","P=$(IOCNAME),R=:asynRec,PORT='PORT1',ADDR='0',IMAX='1024',OMAX='256'")
