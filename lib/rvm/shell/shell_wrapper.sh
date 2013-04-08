# Prints an epilog to a shell command.
__rvm_show_command_epilog() {
  local _code="$?"
  echo "---------------RVM-RESULTS-START---------------"
  # why making it unnecessary complicated by passing it through ruby?
  #ruby -rrubygems -ryaml -e \
  #    "puts YAML.dump({'environment' => ENV.to_hash, 'exit_status' => '${_code}'})"

  # using direct echo instead, supporting rubies which don't implement gems yet
  echo "---"
  echo "exit_status: '${_code}'"
  echo "----------------RVM-RESULTS-END----------------"
}

