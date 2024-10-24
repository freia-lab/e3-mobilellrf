# This should be a test or example startup script

require mobilellrf

epicsEnvSet ("IOCNAME", "ioc29-llrfmobile")
#epicsEnvSet("TOP", "/opt/epics/autosave")
epicsEnvSet("TOP", "/tmp")
epicsEnvSet("IOCDIR", "llrfmobile")

iocshLoad("$(mobilellrf_DIR)mobilellrf.iocsh", "IP_ADDR1=192.168.10.109,PREFIX1=LLRF-1:,DEVICE1=FUNCGEN-1,ASYN_PORT1=PORT1,IP_ADDR2=192.168.10.40,PREFIX2=LLRF-Aux:,DEVICE2=ArduinoPMC:,ASYN_PORT2=PORT2,PREFIX3=LLRF-Ctrl:")
#dbLoadRecords("rfmode-selector.db", "P=LLRF-1:FUNCGEN-1")
#dbLoadRecords("asynRecord.db","P=$(IOCNAME),R=:asynRec,PORT='PORT1',ADDR='0',IMAX='1024',OMAX='256'")
