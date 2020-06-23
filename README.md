# ffmpegs-shortcuts-for-radio-yowsah

## Prerequisite

Linux or MacOS with `ffmpeg` in the `PATH`.

## Analyse Track

```bash
$ ./analyseTrack.sh my-folder/my-track.mp3
```

In my-folder, you'll find a `txt` file with the output
of the _volumedetect_ filter from `ffmpeg`.

## Volume Filter

```bash
$ ./volumeFilter my-folder/my-track.mp3 2dB
```

This script will create a new file in `my-folder` with volume
adjusted +2dB named `my-track-2dB.mp3`.

## Tracks to 128k

```bash
$ ./tracksTo128k.sh
```

You have to put mp3's you want to lower the bitrate in a `Todo` folder.
The script will find all mp3 files, transform in a 128k mp3 and place
the result in a `Done` folder.

After the process succeed, the track will be moved to the `Originals`
folder.
