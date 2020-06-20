function trim
argparse 's-start=+' 'e-end=+' 'i/in=' 'o/out=' -- $argv
ffmpeg -i $_flag_in -ss $_flag_start -to $_flag_end -acodec aac -vcodec h264 $_flag_out
end
