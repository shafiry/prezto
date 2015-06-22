export ANT_OPTS="-Xmx256m -Dant.logger.defaults=$HOME/.ant.logger"
export ANT=$(command -v ant)

function antf() {
  # Black       0;30     Dark Gray     1;30
  # Blue        0;34     Light Blue    1;34
  # Green       0;32     Light Green   1;32
  # Cyan        0;36     Light Cyan    1;36
  # Red         0;31     Light Red     1;31
  # Purple      0;35     Light Purple  1;35
  # Brown       0;33     Yellow        1;33
  # Light Gray  0;37     White         1;37

  REDBG=`echo -e '\033[1;41m\033[37m'`
  REDFG=`echo -e '\033[1;0m\033[31m'`
  CYANFG=`echo -e '\033[1;0m\033[36m'`
  GREENFG=`echo -e '\033[1;0m\033[32m'`
  GREENBG=`echo -e '\033[1;42m\033[33m'`
  NC=`echo -e '\033[0m'`

  $ANT -logger org.apache.tools.ant.listener.AnsiColorLogger "$@" \
    | perl -pe 's/(?<=\e\[)2;//g' \
    | sed \
    -e "s/\(-* Standard Error -*\)/$REDFG\1$NC/" \
    -e "s/\(FAILED\)/$REDFG\1$NC/" \
    -e "s/\(ERROR\)/$REDFG\1$NC/" \
    -e "s/\(Failures: [0-9]\{1,5\}\)/$REDFG\1$CYANFG/" \
    -e "s/\(Errors: [0-9]\{1,5\}\)/$REDFG\1$CYANFG/" \
    -e "s/\(Failures: 0\)/$GREENFG\1$CYANFG/" \
    -e "s/\(Errors: 0\)/$GREENFG\1$CYANFG/" \
    -e "s/\(Testcase:\)/$GREENFG\1$CYANFG/" \
    -e "s/\(Tests run: [0-9]*\)/$GREENFG\1$CYANFG/"
}

alias ant=antf

