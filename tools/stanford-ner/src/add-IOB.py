import re
import sys

if len(sys.argv) > 2:
	filein = sys.argv[1]
	fileout = sys.argv[2]
else:
	print "Usage: python " + sys.argv[0] + " <input file> <output file>\n"
	sys.exit()

f = open(filein,'r')
f_str = f.read().splitlines()
f.close()

# get first line tag
first_line = f_str[0]
first_line_split = first_line.split()
if len(first_line_split) > 1 and first_line_split[1] == 'O':
	f_str[0] = re.sub(r'(.+)\t(.+)',r'\1\tB-\2',f_str[0])

for i,line in enumerate(f_str[1:]):
	if len(line) > 0:
		try:
			tag = line.split()[1]
			if not tag == 'O':
				previous_line = f_str[i]
				if len(previous_line) > 0:
					previous_tag = previous_line.split()[1]
					if re.match(r'[BI]-' + tag, previous_tag):
						f_str[i + 1] = line.split()[0] + '\tI-' + tag
					else:
						f_str[i + 1] = line.split()[0] + '\tB-' + tag
				else:
					f_str[i + 1] = line.split()[0] + '\tB-' + tag
		except IndexError:
			print line

to_file = "\n".join(f_str)

o = open(fileout,'w')
o.write(to_file)
o.close()
