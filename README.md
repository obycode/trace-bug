To reproduce the bug:

```sh
git clone https://github.com/obycode/trace-bug.git
cd trace-bug
clarinet console --use-on-disk-deployment-plan
```

In the console, run:

```
::trace (contract-call? .caller call-latest u4)
```