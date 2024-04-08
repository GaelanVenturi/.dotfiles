#!/usr/bin/env bash

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update

# what directories should be installable by all users including the root user
base=(
	bash
)

# folders that should, or only need to be installed for a local user
useronly=(
	git
	bin
)

# .config folder items
configonly=(
	nvim
)

# Explicitly remove known conflicting files
remove_known_conflicts() {
	local usr=$1
	# Define a list of known conflicting files for each app
	declare -A known_conflicts
	known_conflicts[bash]=".bash_profile .bashrc"
	known_conflicts[git]=".gitconfig"

	for app in "${!known_conflicts[@]}"; do
		for file in ${known_conflicts[$app]}; do
			if [[ -f "${usr}/${file}" || -L "${usr}/${file}" ]]; then
				echo "Removing known conflicting file: ${usr}/${file}"
				rm -f "${usr}/${file}"
			fi
		done
	done

}

# resolve stow conflicts by removing or backing up conflicting files
resolve_conflicts() {
	usr=$1
	app=$2
	target=${usr}/$3 # target path, if it's for config, it'll be passed as an additional argument
	echo "Resolving conflicts for ${app} in ${target}"

	# Perform a dry run to find conflicts
	conflicts=$(stow -n -v -t "${target}" "${app}" 2>&1 | grep "existing target is neither a link nor a directory" | awk '{print $NF}')

	# If there are conflicts, remove the conflicting files
	for conflict in $conflicts; do

		echo "Removing conflicting file: ${target}/${conflict}"
		rm -rf "${target}/${conflict}"
	done

}

# run the stow command for the passed in directory ($2) in location $1
stowit() {
	usr=$1
	app=$2
	# -v verbose
	# -R recursive
	# -t target
	stow -v -R -t ${usr} ${app}
}

# run the stow command for configuration files in .config
stowConfig() {
	usr=$1
	app=$2
	target="${usr}/.config/${app}"
	mkdir -p "${target}/${app}"
	echo "Stowing ${app} into ${target} for user ${usr}"

	resolve_conflicts "${usr}" "${app}" ".config/${app}"
	stow -v -R -t "${target}" "${app}"
}
echo ""
echo "Stowing apps for user: ${whoami}"

# Remove known conflicting files before starting
remove_known_conflicts "${HOME}"

# install apps available to local users and root
for app in ${base[@]}; do
	stowit "${HOME}" $app
done

# install only user space folders
for app in ${useronly[@]}; do
	if [[ ! "$(whoami)" = *"root"* ]]; then
		stowit "${HOME}" $app
	fi
done

# install .config configurations
echo ""
echo "Stowing .config specific files"

for app in ${configonly[@]}; do
	if [[ ! "$(whoami)" = *"root"* ]]; then
		stowConfig "${HOME}" $app
	fi
done

echo ""
echo "##### ALL DONE"
