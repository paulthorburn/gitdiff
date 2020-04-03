asdf
asdf
adasdf
asdf
asdf
        gitdiff=$(git diff-tree --no-commit-id --name-only -r ${{ github.sha }})
        echo Here are the recently modified files
        echo $gitdiff
        workspaces=$(echo $gitdiff | rev | cut -d"/" -f2 | rev | uniq)
        echo Here are the unique workspace folders
        echo $workspaces