set -l bootstrap_file /mnt/d/j-kawasaki/.local/share/fresco/repos/github.com/masa0x80/fresco/fresco.fish
if test -r $bootstrap_file
    source $bootstrap_file
else
    mkdir -p /mnt/d/j-kawasaki/.local/share/fresco/repos/github.com/masa0x80/fresco
    git clone https://github.com/masa0x80/fresco /mnt/d/j-kawasaki/.local/share/fresco/repos/github.com/masa0x80/fresco
end
