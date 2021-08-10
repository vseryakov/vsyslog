module syslog

import syslog

fn test_openlog() {
    syslog.open("V", syslog.log_pid|syslog.log_perror, syslog.log_user)
}

fn test_syslog() {
    syslog.log(log_notice, "testing v syslog")
    syslog.err("this is an error")
    syslog.info("this is an info")
    syslog.note("this is an notice")
    syslog.debug("this is an debug")
}

fn test_closelog() {
    syslog.close()
}
