#!/bin/bash
# 
# This material is subject to the VoteHere Source Code Evaluation
# License Agreement ("Agreement").  Possession and/or use of this
# material indicates your acceptance of this Agreement in its entirety.
# Copies of the Agreement may be found at www.votehere.net.
# 
# Copyright 2004 VoteHere, Inc.  All Rights Reserved
# 
# You may not download this Software if you are located in any country
# (or are a national of a country) subject to a general U.S. or
# U.N. embargo or are deemed to be a terrorist country (i.e., Cuba,
# Iran, Iraq, Libya, North Korea, Sudan and Syria) by the United States
# (each a "Prohibited Country") or are otherwise denied export
# privileges from the United States or Canada ("Denied Person").
# Further, you may not transfer or re-export the Software to any such
# country or Denied Person without a license or authorization from the
# U.S. government.  By downloading the Software, you represent and
# warrant that you are not a Denied Person, are not located in or a
# national of a Prohibited Country, and will not export or re-export to
# any Prohibited Country or Denied Party.
set -e 

# Usage
if test $# -lt 2 ; then
   echo "Usage: observer_check_verification_stmt.sh ELECTION_ID PRECINCT_ID"
   exit 2
fi
eid=$1
pid=$2

declare -a receipts=($(ls ./precinct_$eid-$pid/*-vr.*))
nreceipts=${#receipts[@]}

# Check verification codes on voter receipts against codes on verification statements
i=0
while test $i -lt $nreceipts; do

   echo "OBSERVER/VOTER: checking receipt ${receipts[$i]} ... "
   perl observer_check_verification_stmt.pl \
      ${receipts[$i]} \
      ../transcript/precinct_$eid-$pid/tabulation/verification_statements.xml \
      ./_result.xml
   if test "$(cat _result.xml)" != "<CheckResults>0:Success</CheckResults>" ; then
      cat _result.xml
      echo ""
   fi
   echo "... done checking ${receipts[$i]}."
   echo ""

   i=`expr $i + 1`
done

# Clean-up
rm -f ./_*
