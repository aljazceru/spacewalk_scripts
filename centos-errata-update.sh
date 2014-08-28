#spacewalk address
SPACEWALK=127.0.0.1
# set path to errata-import.pl script from http://cefs.steve-meier.de/
SCRIPT_PATH=
CFG_FILE=/etc/ya-errata-import.cfg
# source username and password for spacewalk
. $CFG_FILE

#export SPACEWALK_USER=
#export SPACEWALK_PASS=
#export RHN_USER=
#export RHN_PASS=



# update to te latest errata
cd $SCRIPT_PATH
wget -N http://cefs.steve-meier.de/errata.latest.xml
ERRATA=$SCRIPT_PATH/errata.latest.xml

# update errata for channels (all channels could be in one line separated with commas but if you have many chans its more transparent this way

$SCRIPT_PATH/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish  --debug --security --include-channels <insert your channel label>
$SCRIPT_PATH/errata-import.pl --errata=$ERRATA_XML --server $SPACEWALK --publish  --debug --security --include-channels <insert your channel label>