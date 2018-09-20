*please ignore repo name*

`jet steps` runs build successfully on local machine, changing the ownership of the `mothership` directory successfully

```
$ jet steps
...
(step: check ownership of mothership directory) 
(service: app) (step: check ownership of mothership directory) drwxr-xr-x   8 ec2-user ec2-user  256 Sep 20 00:25 mothership
(step: check ownership of mothership directory) success ✔
(step: attempt to write to mothership directory) 
(step: attempt to write to mothership directory) success ✔
```

You'll note that the CodeShip Pro version of the build is not able to change ownership.. Why?
