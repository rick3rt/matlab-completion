# _matlab_autocomplete function
_matlab_autocomplete() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts="-help -nodesktop -nodisplay -nojvm -nosplash -r -logfile -minimize -softwareopengl -singleCompThread -c -v -wait -desktop"

    if [[ ${cur} == -* ]]; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    return 0
}
complete -F _matlab_autocomplete matlab

