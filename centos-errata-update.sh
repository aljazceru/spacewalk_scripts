#spacewalk address
SPACEWALK=127.0.0.1

# source username and password for spacewalk
. /etc/ya-errata-import.cfg

#export SPACEWALK_USER=
#export SPACEWALK_PASS=
#export RHN_USER=
#export RHN_PASS=



# update to te latest errata
cd /opt/ya-errata-import
wget -N http://cefs.steve-meier.de/errata.latest.xml
ERRATA=/opt/ya-errata-import/errata.latest.xml

# update errata for channels (could be all at once but this looks more transparent
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos5-updates-i386-repo
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos5-base-i386-repo
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos5-base-x86_64-repo
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos5-updates-x86_64-repo
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos6-base-x86_64-repo
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos6-updates-x86_64-repo
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos7-updates-x86_64-repo
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish --include-channels --debug --security centos7-base-x86_64-repo
