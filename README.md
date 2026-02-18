# Install VSCode (Bypass) to Enable Custom CSS & JS Extensions

This method allows custom CSS/JS extensions to modify Visual Studio Code when it is installed in `/opt/visual-studio-code/`.

By default, the folder is owned by `root`, so extensions cannot write to it.

---

## Command

```bash
sudo chown -R $USER:$USER /opt/visual-studio-code/
