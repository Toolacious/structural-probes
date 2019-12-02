for split in train dev test;
do
  python3 convert_conll_to_raw.py ../example/data/ctb/$split.conllx > ../example/data/ctb/$split.txt
  python3 convert_raw_to_bert.py ../example/data/ctb/$split.txt ../example/data/ctb/$split.bertbase-layers.hdf5 chinese
done
