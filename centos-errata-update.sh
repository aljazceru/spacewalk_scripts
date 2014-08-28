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

# update errata for channels (all channels could be in one line separated with commas but if you have many chans its more transparent this way

/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish  --debug --security --include-channels <insert your channel label>
/opt/ya-errata-import/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish  --debug --security --include-channels <insert your channel label>