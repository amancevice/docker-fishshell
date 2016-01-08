function fish_prompt
    echo -n "$USER@$HOSTNAME "
    set_color cyan
    echo -n (pwd)
    set_color blue
    echo -n " >-`,> "
    set_color normal
end
