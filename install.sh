DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VIRTUALENV="$DIR/.venv"

pip install virtualenv
if [ ! -d "$VIRTUALENV" ]; then
	python -m virtualenv --python=python3 "$VIRTUALENV"
fi

source $VIRTUALENV/bin/activate
pip install -r requirements.txt
