# Linux entry level test

Objective: Download `p4` cli tools and install it to appropriate location then sync a p4 workspace to current machine.

Download link: [p4](https://filehost.perforce.com/perforce/r26.1/bin.linux26x86_64/p4)

## Hint

1. Use `curl` to download `p4` to current machine.
2. Move it to `~/.local/bin`
3. Change permission to **executable**
4. Ensure `~/.local/bin` is added to `PATH` environment

## Solution

```sh
pwd # Where are we ?
curl -LO https://filehost.perforce.com/perforce/r26.1/bin.linux26x86_64/p4 # Download the p4 binary
ls -la # Check downloaded binary
mkdir -p ~/.local/bin # Create directory for binaries.
mv p4 ~/.local/bin # Move binary to user binaries directory.
cd ~/.local/bin # Change directory
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
