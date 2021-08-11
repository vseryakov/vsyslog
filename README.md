## Simple syslog module for V(vlang), it uses the system logger on Unix systems

```v
module main

import syslog

fn main() {
    syslog.open("myprog", syslog.log_pid, syslog.log_user)
    syslog.log(syslog.log_error, "some error")
    syslog.err("some error, same as above")
    syslog.info("info message")
}
```

## License
[MIT](LICENSE)

## Contributors

- [Vlad Seryakov](https://github.com/vseryakov) - creator and maintainer
