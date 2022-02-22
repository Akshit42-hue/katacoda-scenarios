#/bin/bash

FREQUENCY=1                                          # Delay between each check for completion
BACKGROUND_SIGNAL_FILE='/opt/.backgroundfinished'    # File updated by background to indicate completion
BACKGROUND_SAFE_WORD='done'                          # Word in BACKGROUND_SIGNAL_FILE indicating completion
START_MESSAGE='Starting scenario'                    # Message before the progress animation
END_NORMAL_MESSAGE='Scenario ready.'
END_KILLED_MESSAGE='Interupted. This scenario may still be initializing.'

start_progress () {
  show_progress &
  progress_pid=$!

  # Catch any exit and stop progress animation
  trap cleanup SIGINT EXIT INT QUIT TERM

  clear
  echo -n "$START_MESSAGE "

  # Periodically check for background signal or user Ctrl-C interuption
  end_message=$END_NORMAL_MESSAGE
  while [[ $progress_pid -ge 0 ]]; do
    grep -i ${BACKGROUND_SAFE_WORD} ${BACKGROUND_SIGNAL_FILE} &> /dev/null
    if [[ "$?" -eq 0 ]]; then
      kill $progress_pid >/dev/null 2>&1
      break
    fi
    sleep ${FREQUENCY}
  done

  stty sane; tput cnorm; clear
  printf "%s\n\n" "${end_message}"
  
  # Pick up any changes during background
  source ~/.bashrc
}

clear
start_progress