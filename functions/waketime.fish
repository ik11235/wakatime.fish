function register_wakatime_fish_before_exec -e fish_preexec
  set -l project
  set -l wakatime_path (type -p wakatime)
  if test -z "$wakatime_path"
     set wakatime_path (type -p ~/.wakatime/wakatime-cli)
     if test -z "$wakatime_path"
       echo "wakatime command not found. Please read "https://wakatime.com/terminal" and install wakatime."
       return 1
     end
  end

  if echo (pwd) | grep -qEi "^/Users/$USER/Sites/"
      set  project (echo (pwd) | sed "s#^/Users/$USER/Sites/\\([^/]*\\).*#\\1#")
  else
      set  project "Terminal"
  end
  $wakatime_path --write --plugin "ik11235/waketime.fish/0.0.1" --entity-type app --project "$project" --entity (echo $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&
end
