# This should be a test or example startup script

require mobilellrf

epicsEnvSet ("IOCNAME", "xxx-llrfmobile")
#epicsEnvSet("TOP", "/opt/epics/autosave")
epicsEnvSet("TOP", "/tmp")
epicsEnvSet("IOCDIR", "llrfmobile")

iocshLoad("$(mobilellrf_DIR)mobilellrf-s7.iocsh", "IP_ADDR1=192.168.10.109,PREFIX1=LLRF-1:,DEVICE1=FUNCGEN-1,ASYN_PORT1=PORT1,IP_ADDR2=192.168.10.47,PREFIX2=xxx-Aux:,DEVICE2=ArduinoPMC:,ASYN_PORT2=PORT2,PREFIX3=LLRF-Ctrl:")
