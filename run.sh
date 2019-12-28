DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VIRTUALENV="$DIR/.venv"

if [ ! -d "$VIRTUALENV" ]; then
	bash -c "$DIR/install.sh"
fi

source "$VIRTUALENV/bin/activate"
python -m jupyter lab "$DIR/workspace"
