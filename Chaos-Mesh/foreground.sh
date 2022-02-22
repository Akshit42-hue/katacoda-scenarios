#/bin/bash

printf 'This is a bash shell script.\n\n'
printf 'Any commands you put in here will be executed at runtime.\n\n'
printf 'As such, this is a good place to install and configure anything you want to have ready for the learner before they get started.\n\n'
printf 'The file is named foreground.sh because when it executes, the commands are echoed to the terminal.\n\n'
printf 'To run a script in the background, so learners will not see it execute, specify it in the index.json as "background": "background.sh"\n\n'

FREQUENCY=1                                          # Delay between each check for completion
BACKGROUND_SIGNAL_FILE='/opt/.backgroundfinished'    # File updated by background to indicate completion
BACKGROUND_SAFE_WORD='done'                          # Word in BACKGROUND_SIGNAL_FILE indicating completion
START_MESSAGE='Starting scenario'                    # Message before the progress animation
END_NORMAL_MESSAGE='Scenario ready.'
END_KILLED_MESSAGE='Interupted. This scenario may still be initializing.'
