if status is-interactive
    # Starship custom prompt
    starship init fish | source
	function fish_greeting
	fastfetch
    end
end
