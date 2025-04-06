function prompt {
    $esc = [char]27  # This is the ESC character
    $gitBranch = ''

    if (Test-Path .git) {
        $branch = git symbolic-ref --short HEAD 2>$null
        if ($branch) {
            $gitBranch = "$esc[33m[$branch]$esc[0m"
        }
    }

    $cwd = "$esc[32m$PWD$esc[0m"
    return "$cwd $gitBranch> "
}