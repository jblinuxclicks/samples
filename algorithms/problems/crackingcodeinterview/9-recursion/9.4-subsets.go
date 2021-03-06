package recursion

func sumAriphmenticProgression(n int) int {
	return (2+n-1)*n/2 + 1
}

func subsets(arr []int) [][]int {
	n := len(arr)
	result := make([][]int, 1, sumAriphmenticProgression(n))
	result[0] = []int{}
	c := make([][]int, n, n)
	for i := 0; i < n; i++ {
		c[i] = make([]int, 0, n-i)
		for j := i; j < n; j++ {
			c[i] = append(c[i], arr[j])
			result = append(result, c[i])
		}
	}
	return result
}
