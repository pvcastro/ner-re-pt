from lxml import etree
import sys
from random import shuffle
from sklearn.model_selection import train_test_split
#129 documents

if(len(sys.argv) > 2):
  harem_filename = sys.argv[1]
  output_name = sys.argv[2]
else:
  print "Usage: python " + sys.argv[0] + " <input file> <output file>"
  sys.exit()

tree = etree.parse(harem_filename)

dataset = tree.xpath("//DOC")
shuffle(dataset)

out_tree_str = "<?xml version='1.0' encoding='ISO-8859-1'?>\n"
out_tree_str += "<!DOCTYPE colHAREM>\n"
out_tree_str += "<colHAREM versao=\"Segundo_dourada_com_relacoes_14Abril2010\">\n"
out_tree_str += "</colHAREM>"

out_tree_train = etree.fromstring(out_tree_str)
out_tree_test = etree.fromstring(out_tree_str)
out_tree_val = etree.fromstring(out_tree_str)

#val = folds[len(folds)-1:] #ultimo
train, test_val = train_test_split(dataset, test_size=0.2)
test, val = train_test_split(test_val, test_size=0.5)
#val = [item for sublist in folds[len(folds)-1:] for item in sublist]
#test = folds[len(folds)-2:-1] #penultimo
#test = [item for sublist in folds[len(folds)-2:-1] for item in sublist]
#train = folds[:-2] #restante
#train = [item for sublist in folds[:-2] for item in sublist]

for el in train:
	out_tree_train.append(el)

for el in test:
	out_tree_test.append(el)

for el in val:
	out_tree_val.append(el)

# output to file
f = open("../outputs/"+output_name+"_train.xml",'w')
f.write(etree.tostring(out_tree_train, encoding="ISO-8859-1"))
f.close()

# output to file
f = open("../outputs/"+output_name+"_test.xml",'w')
f.write(etree.tostring(out_tree_test, encoding="ISO-8859-1"))
f.close()

# output to file
f = open("../outputs/"+output_name+"_val.xml",'w')
f.write(etree.tostring(out_tree_val, encoding="ISO-8859-1"))
f.close()
