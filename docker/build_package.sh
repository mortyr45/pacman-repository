#!/bin/bash

set -euo pipefail

fn_install_aur_package() {
    set -euo pipefail
    local temp_dir
    temp_dir=$(mktemp -d)
    git clone "https://aur.archlinux.org/$1.git" "$temp_dir"
    cd "$temp_dir"
    PKGDEST=/tmp/tmp_build makepkg --noconfirm --syncdeps --install
}

fn_install_dependencies() {
    set -euo pipefail
    local package_list
    package_list=$1
    local repo_package_list
    repo_package_list=""
    local aur_package_list
    aur_package_list=""
    for item in $package_list; do
        item="${item%%[<>=]*}"
        pacman -Si $item > /dev/null && repo_package_list+=" $item" || aur_package_list+=" $item"
    done
    sudo pacman -Syu --noconfirm $repo_package_list
    for item in $aur_package_list; do
        fn_install_aur_package "$item"
    done
}

fn_build_package() {
    set -euo pipefail
    cd "/tmp/workdir/$1"
    local dependency_packages
    dependency_packages=$(makepkg --printsrcinfo | { grep -e makedepends -e checkdepends || true; } | cut -d'=' -f2 | xargs)
    [[ "$dependency_packages" != "" ]] && fn_install_dependencies "$dependency_packages"
    cd "/tmp/workdir/$1"
    makepkg --noconfirm --syncdeps --install
}

print_usage() {
    printf "Usage: get_package_list.sh [options]

    -l Build all packages in an order set by a .txt file.
    -p Build a specific package.
"
}

list_param=""
package_param=""

[[ "$*" == "" ]] && print_usage && exit 1
while getopts ":l:p:" opt; do
    case ${opt} in
        l ) list_param=$OPTARG;;
        p ) package_param=$OPTARG;;
        \? )
            echo "Invalid option: -$OPTARG" 1>&2
            exit 1
            ;;
        : )
            echo "Option -$OPTARG requires an argument." 1>&2
            exit 1
            ;;
    esac
done
shift $((OPTIND -1))

mkdir ~/.gnupg && chmod 700 ~/.gnupg && echo "auto-key-retrieve" > ~/.gnupg/gpg.conf

[[ "$list_param" != "" && "$package_param" != "" ]] && print_usage && exit 1

if [[ "$list_param" != "" ]]; then
    packages=$(cat /tmp/build_orders/$list_param.txt)
    for package in $packages; do
        fn_build_package $package
    done
fi
if [[ "$package_param" != "" ]]; then
    fn_build_package "$package_param"
fi
