# this script will create nodeJS minimal structure for application
# file name: file_system_creator.sh

function init_node(){
    cd "$PWD/$1" || { echo "Failed to enter directory $1"; exit 1; }

    npm init -y > /dev/null 2>&1
    sed -i '10c "author": "Saba Sajaia",' package.json
    touch script.js 
    echo "console.log('this is script.js')" > script.js
    mkdir -p src/database src/config src/models
    echo "Project created successfully!"
    pwd
}


if ! command -v node > /dev/null 2>&1; then
    echo "Node JS is not installed"
    exit 1
fi


if [[ -z "$1" || -n "$2" ]]; then
    echo "Usage: ./file_system_creator.sh <path>"
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "Error: Path '$1' does not exist."
    exit 1
fi


init_node "$1"