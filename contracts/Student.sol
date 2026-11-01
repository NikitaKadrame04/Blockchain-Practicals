// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Structures
contract Student{
   struct student{
    uint roll_no;
    string name;
   }

   //Array
   student[] public studentarr;

   function addStudent(uint roll_no, string memory name) public {
    for(uint i=0; i<studentarr.length; i++){
        if(studentarr[i].roll_no==roll_no){
            revert("Student with this roll no already exists");
        }
    }
    studentarr.push(student(roll_no,name));
   }

   function getStudentsLength()public view returns(uint){
    return studentarr.length;
   }

   function displayAllStudents()public view returns(student[] memory){
    return studentarr;
   }

   function getStudentByIndex(uint idx) public view returns(student memory){
    require(idx<studentarr.length,"index out of bound");
    return studentarr[idx];
   }
   //Fallback

    fallback() external payable { 
        //Handles external fucntion calls that is not there in our contract
    }

    receive() external payable { 
        //Handles ether sent by external user but without data mentioned
    }

}