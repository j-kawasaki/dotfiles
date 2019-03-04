# sosreport
# Autogenerated from man page /usr/share/man/man1/sosreport.1.gz
complete -c sosreport -s l -l list-plugins --description 'List all available plugins and their options.'
complete -c sosreport -s n -l skip-plugins --description 'Disable the specified plugin(s).'
complete -c sosreport -s e -l enable-plugins --description 'Enable the specified plugin(s).'
complete -c sosreport -s o -l only-plugins --description 'Enable the specified plugin(s) only (all other plugins should be disabled).'
complete -c sosreport -s k -l plugin-option --description 'Specify plug-in options.'
complete -c sosreport -s a -l alloptions --description 'Set all boolean options to True for all enabled plug-ins.'
complete -c sosreport -s v -l verbose --description 'Increase logging verbosity.'
complete -c sosreport -s q -l quiet --description 'Only log fatal errors to stderr.'
complete -c sosreport -l no-report --description 'Disable HTML/XML report writing.'
complete -c sosreport -l config-file --description 'Specify alternate configuration file.'
complete -c sosreport -s s -l sysroot --description 'Specify an alternate root file system path.'
complete -c sosreport -s c -l chroot --description 'Set the chroot mode.'
complete -c sosreport -l tmp-dir --description 'Specify alternate temporary directory to copy data as well as the compressed …'
complete -c sosreport -l list-profiles --description 'Display a list of available profiles and the plugins that they enable.'
complete -c sosreport -s p -l profile --description 'Only run plugins that correspond to the given profile.'
complete -c sosreport -l verify --description 'Instructs plugins to perform plugin-specific verification during data collect…'
complete -c sosreport -l log-size --description 'Places a global limit on the size (in MiB) of any collected set of logs.'
complete -c sosreport -l all-logs --description 'Tell plugins to collect all possible log data ignoring any size limits and in…'
complete -c sosreport -s z -l compression-type --description 'Override the default compression type specified by the active policy.'
complete -c sosreport -l batch --description 'Generate archive without prompting for interactive input.'
complete -c sosreport -l name --description 'Deprecated.  See --label.'
complete -c sosreport -l label --description 'Specify an arbitrary identifier to associate with the archive.'
complete -c sosreport -l threads --description 'Specify the number of threads sosreport will use for concurrency.'
complete -c sosreport -l case-id --description 'Specify a case identifier to associate with the archive.'
complete -c sosreport -l ticket-number --description 'Specify a ticket number or other identifier to associate with the archive.'
complete -c sosreport -l build --description 'Do not archive copied data.'
complete -c sosreport -l debug --description 'Enable interactive debugging using the python debugger.'
complete -c sosreport -l experimental --description 'Enable plugins marked as experimental.'
complete -c sosreport -l help --description 'Display usage message.  MAINTAINER.'

