#!/usr/bin/python2.7
# -*- coding: UTF-8 -*-
# author: wr786

import sys, os

def usage():
	print("""Usage: python ./wdriver.py [-t <tracenum> -i <itertimes>]
Options
	-t <a> 	   Run trace <a> only
	-t <a> <b> Run trace <a> to <b> only 
	-i <n> 	   Run trace n times
""")

if __name__ == '__main__':
	if len(sys.argv) <= 1:
		usage()
	else:
		# too lazy to write error handle
		n = int(sys.argv[2])
		if len(sys.argv) > 3:
			try:
				m = int(sys.argv[3])
				for i in range(n, m+1):
					os.system("./sdriver -t %d" % i)
			except:	# iter
				m = int(sys.argv[4])
				os.system("./sdriver -t %d -i %d" % (n, m))
		else:
			os.system("./sdriver -t %d" % n)