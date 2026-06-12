## Solution

```sh
pwd # Where are we ?
curl -LO http://107.98.150.183:6969/Archive/bin/p4.tar.gz # Download the p4 binary
ls -la # Check downloaded binary
mkdir -p ~/.local/bin # Create directory for binaries.
mv p4.tar.gz ~/.local/bin # Move binary to user binaries directory.
cd ~/.local/bin # Change directory
tar zxvf p4.tar.gz
rm p4.tar.gz
chmod +x p4 # Add executable permission for the binary
echo $PATH # Check if local bin exist
cat ~/.profile # Check if profile has already export PATH
vim ~/.profile # Edit profile if needed
source ~/.profile # Or re-login shell
p4 -V # Check executable
exit # Done
```

So with just this simple test, we have check if user know to use simple linux commands: `ls`, `mv`, `cat`, `echo`, ...
