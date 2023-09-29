# nepaliconv
### A nepali calendar cli converter for linux 
this repository is a fork of [https://github.com/nepali-bhasa/nepali-calendar](https://github.com/nepali-bhasa/nepali-calendar "https://github.com/nepali-bhasa/nepali-calendar")
add removed gui part.

### build
on project directory  

`make all`
### install 
`sudo make install`
### clean build
`make clean`
### uninstall from system
`sudo make uninstall`

# examples

```shell
./nepaliconv -bs -u -f y-m-d-W
२०८०-०६-१२-शुक्रबार
```



```shell
./nepaliconv -bs -f "y.m.d"
2080.06.12
```

```shell
./nepaliconv -ad 2080.06.12
2023.09.29 Fri
```
```shell
nepaliconv -bs 2023.09.29
2080.06.12 Fri
 ```
# spaces on dete
```shell
./nepaliconv -bs -u -f y\ \M\ \d\ \गते\ \W
 २०८० असोज १२ गते शुक्रबार
```

# To display help and learn about other options, use a -h option.
