export PYTHONPATH=/neuroarch_nlp:/quepy:/usr/local/lib/python2.7/site-packages:/usr/lib/python2.7/dist-packages/:$PYTHONPATH

BASEDIR=$(dirname "$0")
cd $BASEDIR

if [ $# -eq 0 ]; then
    python nlp_component.py
fi

if [ $# -eq 1 ]; then
    python nlp_component.py --url $1
fi

if [ $# -eq 2 ]; then
  if [ $2 = "--no-ssl" ]; then
    python nlp_component.py --no-ssl --url $1
  else
    echo "Unrecognised argument"
  fi
fi


