# Using TouchID with `sudo` on macOS

1. Open `/etc/pam.d/sudo` (requires sudo)
2. On a new line below the comment, write `auth sufficient pam_tid.so`
3. Click **OK**
