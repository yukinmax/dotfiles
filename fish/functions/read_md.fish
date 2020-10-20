function read_md
  pandoc $argv | lynx -stdin
end
