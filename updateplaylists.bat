:: CONFIG
    :: Name of the folder to hold all the playlists
    set "foldername=Playlists"

    :: yt-dlp Output name format
    set "outputname=%%(playlist_index)s - [%%(uploader)s] %%(title)s.%%(ext)s"
::



:: Create directories if they don't exist
if not exist "%~dp0%foldername%\_Logs\" mkdir "%~dp0\%foldername%\_Logs\"

:: Download all playlist songs
yt-dlp^
 -i -x -f "bestaudio" --audio-format mp3^
 --batch-file=playlistlinks.txt^
 --download-archive "%foldername%/_Logs/downloadlog.txt"^
 --parse-metadata "%%(playlist)s:(?P<directory1>[^/]+)(?:/(?P<directory2>[^/]+))?(?:/(?P<directory3>[^/]+))?(?:/(?P<directory4>[^/]+))?(?:/(?P<directory5>[^/]+))?(?:/(?P<directory6>[^/]+))?(?:/(?P<directory7>[^/]+))?(?:/(?P<directory8>[^/]+))?"^
 --output "/%foldername%/%%(directory1)s/%%(directory2|)s/%%(directory3|)s/%%(directory4|)s/%%(directory5|)s/%%(directory6|)s/%%(directory7|)s/%%(directory8|)s/%outputname%"^
 --extractor-args youtube:skip=translated_subs;youtubetab:skip=webpage;youtube:skip=hls,dash

:: Normalize all new songs
rsgain easy -S -p "%~dp0no_album.ini" "%~dp0%foldername%"
PAUSE