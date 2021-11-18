set -e
set -u

ROOD_DIR="$(realpath $(dirname "$0"))"
DST_DIR="$ROOD_DIR/pre-trained_language_models"


cd "$ROOD_DIR"
echo 'Building common vocab'
if [ ! -f "$DST_DIR/common_vocab_cased.txt" ]; then
  python lama/vocab_intersection.py
else
  echo 'Already exists. Run to re-build:'
  echo 'python util_KB_completion.py'
fi
