#!/usr/bin/env zsh

typeset -x tmp_file=$(mktemp)
trap "rm -f $tmp_file" 0 2 3 15

echo "Hello World"

typeset -x DOTFILES_DIR=$(pwd)

echo $DOTFILES_DIR

typeset -Uxg failed_commands=()


function list_failed_commands {
	echo ""
	if [ ${#failed_commands[@]} -eq 0 ]; then
		echo "🎉 The bootstrap process completed successfully! 💪"
	else
		echo "⚠️ The following commands have failed:"
		for cmd in $failed_commands; do
			echo "\t- $cmd"
		done
	fi
}


# sudo -v
# sudo echo >/dev/null || exit 1

# echo "Thanks for password"



function try {
	. './try.sh' $@
}



# typeset -Ux failed_commands=()

# function list_failed_commands {
# 	echo ""
# 	if [ ${#failed_commands[@]} -eq 0 ]; then
# 		echo "🎉 The bootstrap process completed successfully! 💪"
# 	else
# 		echo "⚠️ The following commands have failed:"
# 		for cmd in $failed_commands; do
# 			echo "\t- $cmd"
# 		done
# 	fi
# }

# # try -vv sleep 3
# # try -vv sudo sleeep 3
# # try -vv defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# # try -vv sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# # try -vv defaults read /Library/Preferences/com.apple.loginwindoww


# array=($(find . -type f))
# echo $array

# for f in $array ; do
# 	try echo "file found: $f"
# done

# try sleep 40

# # find . -type f -print0 | while read -d $'\0' file
# # do
# #  echo "file found: $file"
# # done

try sleep 1
try sleeep 1
try sleeep 2
try sleeep 3
try sleep 1

list_failed_commands
