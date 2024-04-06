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
	stow -v -R -t "${target}" "${app}"
}

echo ""
echo "Stowing apps for user: ${whoami}"

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
