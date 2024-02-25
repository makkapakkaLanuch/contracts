// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Invite {
    uint256 amt_be_inviter;
    // bool ;
    // bool ;
    uint256 invites;

    mapping (address => bool) is_registed_inviter;
    mapping (address => bool) is_invited;
    mapping (address => address[]) inviteList;
    mapping (address => address) my_inviter;


    function re_is_registed_inviter(address _address) public view returns(bool) {
        return is_registed_inviter[_address];
    }

    function re_is_invited(address _address) public view returns(bool) {
        return is_invited[_address];
    }

    function re_inviteList(address _address) public view returns(address[] memory) {
        return inviteList[_address];
    }

    function re_my_inviter() public view returns(address) {
        return my_inviter[msg.sender];
    }

    function re_invites(address _address) public view returns(uint256) {
        return inviteList[_address].length;
    }
}