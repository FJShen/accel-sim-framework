#!/bin/bash
echo $GPGPUSIM_ROOT
if ! command -v pre-commit &> /dev/null
then
  echo "pre-commit NOT installed";
  pip3 install pre-commit;
else
  echo "pre-commit IS installed";
fi

pushd $ACCELSIM_ROOT; pre-commit install; popd;
pushd $GPGPUSIM_ROOT/; pre-commit install; popd;
