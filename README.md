<p align="center">
    <img src="firefox.png" alt="Firefox logo" width=128 height=128>

<h2 align="center">Marble AppImage</h2>

<!--  <p align="center">Mozilla Firefox Stable, Beta and Nightly (unofficial) AppImages by GitHub Actions Continuous Integration -->
  <p align="center">
    <a href="https://github.com/NetworkNeighborhood/Marble"><b>Marble Source code</b></a>
    <br>
    <a href="https://github.com/srevinsaju/Firefox-Appimage"><b>The original Firefox Appimage repo</b></a>
  </p>
</p>

### Executing
#### File Manager
Double-click the `*.AppImage` file, and you are done.

> In normal cases, the above method should work, but in some rare cases,
the `+x` permissions. So, right click > Properties > Allow Execution

#### Terminal 

```bash
chmod +x marble*.AppImage
./marble*.AppImage
```

In case FUSE libraries are not installed on the host system, it is 
still possible to run the AppImage

```bash
./marble*.AppImage --appimage-extract
cd squashfs-root
./AppRun
```

## License
"Mozilla Firefox" is licensed under the [Mozilla Public License 2.0  (MPL 2.0)](https://en.wikipedia.org/wiki/Mozilla_Public_License)
The official source code of the Mozilla Firefox is available at links provided 
* https://developer.mozilla.org/en-US/docs/Mozilla/Tech/Viewing_and_searching_Mozilla_source_code_online
* https://hg.mozilla.org/mozilla-central/

"GH Continuous Integration" is licensed under the MIT License. 
