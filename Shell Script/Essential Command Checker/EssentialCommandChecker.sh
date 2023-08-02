for checkMe in 'tor' 'httping'; do
    if ! type $checkMe 1>/dev/null 2>/dev/null; then
        printf '%s\n' "You need $checkMe for continue."
        exit 1
    fi
done
