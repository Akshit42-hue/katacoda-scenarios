#/bin/bash

echo "Waiting to complete"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Done"