<div align="center">
  <img src=".github/assets/logo.png" width="168px"/>
  <h2>BULK-GIT-TOOLS</h2>
  <h4>small collection of git bulk operations</h4>
  <hr/>
  <a href="#installation">Installation</a> |
  <a href="#scripts">Scripts</a> |
  <a href="https://github.com/metaory/bulk-git-tools/issues/new">Issue?</a>
</div>

---

Installation
------------

- clone repo
- give execution permissions
- link them in path

```sh
# Clone the repo
git clone git@github.com:metaory/bulk-git-tools.git

# Navigate to repo
cd bulk-git-tools

# Give execution permissions
find src -type f -exec chmod +x {} +

# Link it somewhere in your PATH
find src/ -type f -executable -exec sh -c 'ln -svf "$PWD/${0#*/}" /usr/bin/${0#*/}' {} \;

# Use them anywhere
```

---

Scripts
-------

### [git-reset-local](src/git-reset-local)
Recovers a corrupted shallow local Git repository

### [git-update-all](src/git-update-all)
Fetches all latest remotes and reset to default HEAD

### [git-clone-org](src/git-clone-org)
Clones all public repositories from a specified organization

### [git-clone-list](src/git-clone-list)
Dumps all Git repositories in the current working directory into a structured file,
including essential information like remote URLs and local paths.

---

License
-------
[MIT](LICENSE)
