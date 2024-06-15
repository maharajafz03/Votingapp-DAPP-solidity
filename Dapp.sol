// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.10;

// contract Voting {

//     struct Candidate {
//         uint id;
//         string name;
//         uint voteCount;
//     }

//     mapping (uint => Candidate) public candidates;

//     mapping (address => bool) public hasVoted;

//     uint public candidateCount;

//     constructor(string[] memory candidateNames) {
//         candidateCount = 0;
//         for (uint i = 0; i < candidateNames.length; i++) {
//             addCandidate(candidateNames[i]);
//         }
//     }

//     function addCandidate(string memory name) private {
//         candidateCount++;
//         candidates[candidateCount] = Candidate(candidateCount, name, 0);
//     }

//     function vote(uint _candidateId) public {
//         require(_candidateId >0 && _candidateId <= candidateCount, "invalid candidate ID");
//         require(!hasVoted[msg.sender], "Already voted");
//         candidates[_candidateId].voteCount++;
//         hasVoted[msg.sender] = true;
//     }

//     function getVote(uint _candidateId) public view returns(uint){
//         require(_candidateId >0 && _candidateId <= candidateCount, "invalid candidate ID");
//         return candidates[_candidateId].voteCount;
//     }
// }
