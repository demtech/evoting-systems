/*  */
/* This material is subject to the VoteHere Source Code Evaluation */
/* License Agreement ("Agreement").  Possession and/or use of this */
/* material indicates your acceptance of this Agreement in its entirety. */
/* Copies of the Agreement may be found at www.votehere.net. */
/*  */
/* Copyright 2004 VoteHere, Inc.  All Rights Reserved */
/*  */
/* You may not download this Software if you are located in any country */
/* (or are a national of a country) subject to a general U.S. or */
/* U.N. embargo or are deemed to be a terrorist country (i.e., Cuba, */
/* Iran, Iraq, Libya, North Korea, Sudan and Syria) by the United States */
/* (each a "Prohibited Country") or are otherwise denied export */
/* privileges from the United States or Canada ("Denied Person"). */
/* Further, you may not transfer or re-export the Software to any such */
/* country or Denied Person without a license or authorization from the */
/* U.S. government.  By downloading the Software, you represent and */
/* warrant that you are not a Denied Person, are not located in or a */
/* national of a Prohibited Country, and will not export or re-export to */
/* any Prohibited Country or Denied Party. */
// Copyright 2003 VoteHere Inc. All Rights Reserved.

#ifndef ENC_BALLOT_POLLSITE_H
#define ENC_BALLOT_POLLSITE_H

#include "vhti/support.h"

#ifdef __cplusplus
extern "C"
{
#endif

EXPORT_SYMBOL int
VHTI_encrypt_ballot_pollsite (ClearTextBallot clear_text_ballot,
                              BlankBallot blank_ballot,
                              BallotSequenceNumber bsn,
                              RandomState random_state,
                              GeneralPurposePrivateKey ballot_signing_key,
                              SignedVotedBallot * signed_voted_ballot,
                              RandomState *random_state_out);

#ifdef __cplusplus
}
#endif
#endif
