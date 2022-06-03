使用gcc編譯成執行檔，需要加入--static 讓complier連結lib.c編入執行檔。
範例:
gcc --static qicksort.c -o quicksort
這樣就會產生quicksort執行檔，接著就可以用gem5來跑。



gem5 跑benchmark時 cache size規定 

L1i -> 32kB
L1d -> 32kB
L2 -> 128kB
L3 -> 1MB




To compile into an executable file using gcc, you need to add --static to let the compiler link lib.c and compile it into the executable file.
example:
gcc --static qicksort.c -o quicksort
This will generate the quicksort executable, which can then be run with gem5.



Cache size regulation when gem5 runs benchmark

L1i -> 32kB
L1d -> 32kB
L2 -> 128kB
L3 -> 1MB