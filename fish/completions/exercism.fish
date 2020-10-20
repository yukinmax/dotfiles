function __fish_exercism_get_cmd
  for c in (commandline -opc)
    if not string match -q -- '-*' $c
      echo $c
    end
  end
end

function __fish_exercism_needs_command
  set cmd (__fish_exercism_get_cmd)
  if not set -q cmd[2]
    return 0
  end
  return 1
end

# global options
complete -r -c exercism -l config -s c -d "path to config file"
complete -f -c exercism -l verbose -d "turn on verbose logging"
complete -f -c exercism -l help -s h -d "show help"
complete -f -c exercism -l version -s v -d "print the version"

# commands
complete -f -c exercism -n "__fish_exercism_needs_command" -a configure -d "Writes config values to a JSON file"
complete -f -c exercism -n "__fish_exercism_needs_command" -a debug -d "Outputs useful debug information"
complete -x -c exercism -n "__fish_exercism_needs_command" -a "download dl" -d "Downloads a solution given the ID of the latest iteration"
complete -f -c exercism -n "__fish_exercism_needs_command" -a "fetch f" -d "Fetches the next unsubmitted problem in each track"
complete -x -c exercism -n "__fish_exercism_needs_command" -a "list li" -d "Lists the available problems for a language track, given its ID"
complete -x -c exercism -n "__fish_exercism_needs_command" -a "open op" -d "Opens exercism.io to your most recent iteration of a problem given the track ID and problem slug"
complete -f -c exercism -n "__fish_exercism_needs_command" -a "restore r" -d "Downloads the most recent iteration for each of your solutions on exercism.io"
complete -x -c exercism -n "__fish_exercism_needs_command" -a skip -d "Skips a problem given a track ID and problem slug"
complete -x -c exercism -n "__fish_exercism_needs_command" -a "status st" -d "Fetches information about your progress with a given language track"
complete -r -c exercism -n "__fish_exercism_needs_command" -a "submit s" -d "Submits a new iteration to a problem on exercism.io"
complete -f -c exercism -n "__fish_exercism_needs_command" -a "tracks t" -d "Lists the available language tracks"
complete -f -c exercism -n "__fish_exercism_needs_command" -a upgrade -d "Upgrades the CLI to the latest released version"
