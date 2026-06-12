# Linux entry level test

Objective: Download `p4` cli tools and install it to appropriate location then sync a p4 workspace to current machine.

Download link: [p4.tar.gz](http://107.98.150.183:6969/Archive/bin/p4.tar.gz)

## Hint

1. Download `p4.tar.gz` using `curl`
2. Move it to `~/.local/bin`
3. Extract it using `tar`
4. Add **executable** permission
5. Ensure `~/.local/bin` is added to `PATH` environment

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

However, if possible, change the test so that all following commands is use:

- File management: `touch`, `mkdir`, `cat`, `cp`, `mv`, `rm`, `file`, `grep`
- Navigation: `cd`, `pwd`, `ls`
- Process management: `ps`, `kill`
- Shell manipulation: `exit`, `clear`
