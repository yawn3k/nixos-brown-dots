PS1='\[\e[1;32m\]\u\[\e[0;90m\]@\[\e[0m\]\h \e[0;90m\](\[\e[1;36m\]\W\e[0;90m\]) \e[0;90m\]>\[\e[0m\] '

HISTSIZE=-10000
HISTFILE=$HOME/.local/share/bash_history

# Blesh
ble-face -s syntax_default fg=none
ble-face -s syntax_command fg=green
ble-face -s syntax_error fg=brown
ble-face -s command_builtin fg=yellow
ble-face -s argument_option fg=green
ble-face -s command_alias fg=green,underline
ble-face -s auto_complete fg=grey
ble-face -s command_function fg=purple
ble-face -s command_keyword fg=none
ble-face -s filename_directory fg=navy,underline
ble-face -s filename_other underline
ble-face -s filename_directory fg=navy,underline
ble-face -s filename_directory_sticky fg=navy,underline
ble-face -s syntax_quoted fg=yellow
ble-face -s syntax_quotation fg=yellow
ble-face -s syntax_comment fg=black
ble-face -s syntax_glob fg=navy,bold
ble-face -s syntax_varname fg=navy
ble-face -s syntax_param_expansion fg=purple
ble-face -s syntax_expr fg=purple
ble-face -s syntax_history_expansion fg=navy
ble-face -s region_insert fg=none
# ble-face -s menu_filter_input fg=bold
ble-face -s filename_block fg=underline
ble-face -s filename_character fg=underline

