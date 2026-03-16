# file name: gitter.sh
# create script that will let you automate git 

gadd() {

    if [[ "$1" == "revert" && $# -eq 1 ]]; then
        rm -rf .git
        echo ".git removed"
        exit 0
    fi

    # Check number of arguments
    if [ $# -ne 2 ]; then
        echo "Usage: gadd <commit message> <github repository>"
        exit 1
    fi

    local msg="$1"
    local repo="$2"

    local repo_no_proto="${repo#https://}"
    repo_no_proto="${repo_no_proto#http://}"

    if [[ "$repo_no_proto" != github.com/* || "$repo_no_proto" != *.git ]]; then
        echo "Invalid GitHub repository"
        exit 1
    fi

    echo "Success! Commit message: '$msg', Repository: '$repo'"

    git init
    git branch -M main
    git remote add origin $2
    git add .
    git commit -m "$1"
    

}
gadd "$@"

