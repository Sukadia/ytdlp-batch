# ytdlp-batch

## Features
- Streamline Youtube playlist download & organization
- Nest up to 8 folders when the playlist name is formatted as `Folder1/Folder2/...`
- Automatically normalize audio so tracks have a similar volume range

## How To Use
1. Install the [yt-dlp](https://github.com/yt-dlp/yt-dlp/releases) and [rsgain](https://github.com/complexlogic/rsgain/releases) dependencies. Place in your PATH.
2. Clone the repository into the directory above where you'd like your music to be in.
3. In each line of `playlistlinks.txt`, add your playlist links.
4. Optionally open `updateplaylists.bat` in a text editor and configure the folder name and output format.
5. Run `updateplaylists.bat` anytime you need to update your playlists!
