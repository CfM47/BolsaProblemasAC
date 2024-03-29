def ordenacion(n, l):
	m = 2147483647 #int maximun value
	i = 0
	while i < n:
		if l[i]< m:
			m = l[i]
		i += 1
	i = m
	while i < m+n:
		print(str(i))
		i += 1

ordenacion(4, [7,4,6,5])