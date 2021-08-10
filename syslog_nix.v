module syslog

pub const log_cons = C.LOG_CONS

pub const log_ndelay = C.LOG_NDELAY

pub const log_perror = C.LOG_PERROR

pub const log_pid = C.LOG_PID

pub const log_emerg = C.LOG_EMERG

pub const log_alert = C.LOG_ALERT

pub const log_crit = C.LOG_CRIT

pub const log_err = C.LOG_ERR

pub const log_warning = C.LOG_WARNING

pub const log_notice = C.LOG_NOTICE

pub const log_info = C.LOG_INFO

pub const log_debug = C.LOG_DEBUG

pub const log_kern = C.LOG_KERN

pub const log_user = C.LOG_USER

pub const log_mail = C.LOG_MAIL

pub const log_daemon = C.LOG_DAEMON

pub const log_auth = C.LOG_AUTH

pub const log_syslog = C.LOG_SYSLOG

pub const log_lpr = C.LOG_LPR

pub const log_news = C.LOG_NEWS

pub const log_uucp = C.LOG_UUCP

pub const log_cron = C.LOG_CRON

pub const log_authpriv = C.LOG_AUTHPRIV

pub const log_ftp = C.LOG_FTP

pub const log_local0 = C.LOG_LOCAL0

pub const log_local1 = C.LOG_LOCAL1

pub const log_local2 = C.LOG_LOCAL2

pub const log_local3 = C.LOG_LOCAL3

pub const log_local4 = C.LOG_LOCAL4

pub const log_local5 = C.LOG_LOCAL5

pub const log_local6 = C.LOG_LOCAL6

pub const log_local7 = C.LOG_LOCAL7

#include <syslog.h>
#include <stdarg.h>

fn C.openlog(&char, int, int)
fn C.closelog()
fn C.syslog(int, &char)

pub fn open(ident string, logopt int, facility int) {
	C.openlog(&char(ident.str), logopt, facility)
}

pub fn close() {
	C.closelog()
}

pub fn log(severity int, fmt string) {
	C.syslog(severity, &char(fmt.str))
}

pub fn fatal(s string) {
    log(log_emerg, s)
    panic(s)
}

pub fn err(s string) {
    log(log_err, s)
}

pub fn warn(s string) {
    log(log_warning, s)
}

pub fn info(s string) {
    log(log_info, s)
}

pub fn note(s string) {
    log(log_notice, s)
}

pub fn debug(s string) {
    log(log_debug, s)
}


