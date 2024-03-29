def alternate(x, n, l):
	for i in range(0,n):
		x = x^(1<<l[i])
	return x

print(alternate(209, 2, [1,4]))
