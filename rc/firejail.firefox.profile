# Firejail profile for Mozilla Firefox (Iceweasel in Debian)
noblacklist ${HOME}/.mozilla
include /etc/firejail/disable-mgmt.inc
include /etc/firejail/disable-secret.inc
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
caps.drop all
# MAX - this one breaks things https://bugs.launchpad.net/ubuntu/+source/firejail/+bug/1776175
#seccomp
# From https://github.com/netblue30/firejail/blob/master/etc-fixes/0.9.38/firefox.profile
seccomp.drop adjtimex,clock_adjtime,clock_settime,settimeofday,stime,modify_ldt,subpage_prot,switch_endian,vm86,vm86old,lookup_dcookie,perf_event_open,process_vm_writev,rtas,s390_runtime_instr,sys_debug_setcontext,delete_module,finit_module,init_module,_sysctl,afs_syscall,bdflush,break,create_module,ftime,get_kernel_syms,getpmsg,gtty,lock,mpx,prof,profil,putpmsg,query_module,security,sgetmask,ssetmask,stty,sysfs,tuxcall,ulimit,uselib,ustat,vserver,ioperm,iopl,pciconfig_iobase,pciconfig_read,pciconfig_write,s390_mmio_read,s390_mmio_write,kexec_load,kexec_file_load,reboot,set_mempolicy,migrate_pages,move_pages,mbind,swapon,swapoff,acct,add_key,bpf,fanotify_init,io_cancel,io_destroy,io_getevents,io_setup,io_submit,ioprio_set,kcmp,keyctl,mount,name_to_handle_at,nfsservctl,ni_syscall,open_by_handle_at,personality,pivot_root,process_vm_readv,ptrace,remap_file_pages,request_key,setdomainname,sethostname,syslog,umount,umount2,userfaultfd,vhangup,vmsplice
protocol unix,inet,inet6,netlink
netfilter
tracelog
noroot
whitelist ${DOWNLOADS}
whitelist ~/.mozilla
whitelist ~/.cache/mozilla/firefox
whitelist ~/.config/gnome-mplayer
whitelist ~/.cache/gnome-mplayer/plugin
include /etc/firejail/whitelist-common.inc

# experimental features
#private-etc passwd,group,hostname,hosts,localtime,nsswitch.conf,resolv.conf,gtk-2.0,pango,fonts,iceweasel,firefox,adobe,mime.types,mailcap,asound.conf,pulse

# Default --seccomp settings.  This breaks firefox
# SECCOMP Filter:
#   VALIDATE_ARCHITECTURE
#   EXAMINE_SYSCAL
#   UNKNOWN ENTRY!!!
#   UNKNOWN ENTRY!!!
#   UNKNOWN ENTRY!!!
#   BLACKLIST 165 mount
#   BLACKLIST 166 umount2
#   BLACKLIST 101 ptrace
#   BLACKLIST 246 kexec_load
#   BLACKLIST 320 kexec_file_load
#   BLACKLIST 304 open_by_handle_at
#   BLACKLIST 175 init_module
#   BLACKLIST 313 finit_module
#   BLACKLIST 176 delete_module
#   BLACKLIST 172 iopl
#   BLACKLIST 173 ioperm
#   BLACKLIST 167 swapon
#   BLACKLIST 168 swapoff
#   BLACKLIST 103 syslog
#   BLACKLIST 310 process_vm_readv
#   BLACKLIST 311 process_vm_writev
#   BLACKLIST 139 sysfs
#   BLACKLIST 156 _sysctl
#   BLACKLIST 159 adjtimex
#   BLACKLIST 305 clock_adjtime
#   BLACKLIST 212 lookup_dcookie
#   BLACKLIST 298 perf_event_open
#   BLACKLIST 300 fanotify_init
#   BLACKLIST 312 kcmp
#   BLACKLIST 248 add_key
#   BLACKLIST 249 request_key
#   BLACKLIST 250 keyctl
#   BLACKLIST 134 uselib
#   BLACKLIST 163 acct
#   BLACKLIST 154 modify_ldt
#   BLACKLIST 155 pivot_root
#   BLACKLIST 206 io_setup
#   BLACKLIST 207 io_destroy
#   BLACKLIST 208 io_getevents
#   BLACKLIST 209 io_submit
#   BLACKLIST 210 io_cancel
#   BLACKLIST 216 remap_file_pages
#   BLACKLIST 237 mbind
#   BLACKLIST 239 get_mempolicy
#   BLACKLIST 238 set_mempolicy
#   BLACKLIST 256 migrate_pages
#   BLACKLIST 279 move_pages
#   BLACKLIST 278 vmsplice
#   BLACKLIST 161 chroot
#   RETURN_ALLOW

