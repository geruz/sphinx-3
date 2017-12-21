# sphinx-3
Dockerfile for sphinx v3

### build image
```shell
docker build -t sphinx:3 .
```

### fast start
```shell
docker run -it sphinx:3 bash
> searchd
> mysql -h 127.0.0.1 -P 9306
> CREATE TABLE test (number int, text field stored);
> INSERT INTO test (id, number, text) VALUES (1, 42, 'Answer to the Ultimate Question of Life, the Universe, and Everything');
> SELECT * FROM test;
```
