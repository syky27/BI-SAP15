@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "H:\BI-SAP\BI-SAP15-REPO\stopwatch\labels.tmp" -fI -W+ie -C V2E -o "H:\BI-SAP\BI-SAP15-REPO\stopwatch\project1.hex" -d "H:\BI-SAP\BI-SAP15-REPO\stopwatch\project1.obj" -e "H:\BI-SAP\BI-SAP15-REPO\stopwatch\stopwatch.eep" -m "H:\BI-SAP\BI-SAP15-REPO\stopwatch\stopwatch.map" "H:\BI-SAP\BI-SAP15-REPO\stopwatch\stopwatch.asm"
