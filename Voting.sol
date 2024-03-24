// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Voting{

 struct Proposal{
  bytes data,
  address target,
  uint yesCount,
  uint noCount
 }

 Proposal[] public proposals

 function newProposal(address _target, bytes calldata _data) external{
    Proposal memory newProposalInstance = Proposal({
        yesCount:0,
        noCount:0,
        data: _data,
        target: _target
    })
    proposals.push(newProposalInstance);
 }
}
