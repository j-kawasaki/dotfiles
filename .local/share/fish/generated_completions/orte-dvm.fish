# orte-dvm
# Autogenerated from man page /usr/share/man/man1/orte-dvm.1.gz
complete -c orte-dvm -s h -l help --description 'Display help for this command .'
complete -c orte-dvm -s V -l version --description 'Print version number.'
complete -c orte-dvm -s H -o host -l host --description 'List of hosts for the DVM.'
complete -c orte-dvm -o hostfile -l hostfile --description 'Provide a hostfile to use.'
complete -c orte-dvm -o machinefile -l machinefile --description 'Synonym for -hostfile.'
complete -c orte-dvm -l prefix --description 'Prefix directory that will be used to set the PATH and LD_LIBRARY_PATH on the…'
complete -c orte-dvm -o gmca -l gmca --description 'Pass global MCA parameters that are applicable to all contexts.'
complete -c orte-dvm -o mca -l mca --description 'Send arguments to various MCA modules.   See the "MCA" section, below.'
complete -c orte-dvm -o report-uri -l report-uri --description 'Print out orte-dvm\'s URI during startup.'
complete -c orte-dvm -s d -l debug-devel --description 'Enable debugging of the ORTE layer.'
complete -c orte-dvm -l debug-daemons-file --description 'Enable debugging of the ORTE daemons in the DVM, storing output in files.'
