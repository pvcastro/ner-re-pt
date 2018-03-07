import re
import sys

if len(sys.argv) > 1:
	filein = sys.argv[1]
else:
	print "Usage: python " + sys.argv[0] + " <input file>\n"
	sys.exit()

f = open(filein,'r')
f_str = f.read().splitlines()
f.close()

f_out = []

while re.match('\n', f_str[0]) or len(f_str[0]) == 0:
	del f_str[0]

for i,line in enumerate(f_str):
	if re.match('\n', line) or len(line) == 0:
		try:
			next_line = f_str[i + 1]
			if not re.match('\n', next_line) and not len(next_line) == 0:
				f_out.append(line)
		except IndexError:
			print 'sem linha em ' + str(i+1)
	else:
		f_out.append(line)


to_file = "\n".join(f_out)

o = open(filein,'w')
o.write(to_file)
o.close()
