if test -f /etc/hosts
then
    echo "test"
fi
# remember the `;`, because it is two lines
if [ -f /etc/hosts ]; then
    echo "["
fi
