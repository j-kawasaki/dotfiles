# steghide
# Autogenerated from man page /usr/share/man/man1/steghide.1.gz
complete -c steghide -o ef -l embedfile --description 'Specify the file that will be embedded (the file that contains the secret mes…'
complete -c steghide -o cf -l coverfile --description 'Specify the cover file that will be used to embed data.'
complete -c steghide -o sf -l stegofile --description 'Specify the name for the stego file that will be created.'
complete -c steghide -s e -l encryption --description 'Specify encryption parameters.'
complete -c steghide -s z -l compress --description 'Specify the compression level.  The compression level can be any number in 1.'
complete -c steghide -s Z -l dontcompress --description 'Do not compress the secret data before embedding it.'
complete -c steghide -s K -l nochecksum --description 'Do not embed a CRC32 checksum.'
complete -c steghide -s N -l dontembedname --description 'Do not embed the file name of the secret file.'
complete -c steghide -o xf -l extractfile --description 'Create a file with the name filename and write the data that is embedded in t…'
complete -c steghide -s p -l passphrase --description 'Use the string following this argument as the passphrase.'
complete -c steghide -s v -l verbose --description 'Display detailed information about the status of the embedding or extracting …'
complete -c steghide -s q -l quiet --description 'Suppress information messages.'
complete -c steghide -s f -l force --description 'Always overwrite existing files.'

