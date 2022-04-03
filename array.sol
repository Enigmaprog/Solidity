// Solidity program to demonstrate creating a fixed-size array
pragma solidity ^0.5.0;

contract Types {
    // Declaring state variables of the type array
    // Объявление переменных состояния массива типов
    uint[6] data1;
    
    // Defining function to add values to an array
    // Определение функции для добавления значений в массив
    function array_example() public returns (int[5] memory, uint[6] memory){
        int[5] memory data = [int(50), -63, 77, -28, 90];
        data1 = [uint(10), 20, 30, 40, 50, 60];
    }
        
        
    //================================================================================================    
    
    
    // Declaring state variable of type array. One is fixed-size and the other is dynamic array
    // Объявление переменной состояния типа массив. Один имеет фиксированный размер, а другой - динамический массив
    uint[] data2 = [10, 20, 30, 40, 50]; 
    int[] data3;  
    
    // Defining function to assign values to dynamic array
    // Определение функции для присвоения значений динамическому массиву
    function dynamic_array() public returns(uint[] memory, int[] memory){  
        data3 = [int(-60), 70, -80, 90, -100, -120, 140]; 
        return (data2, data3);  
    }     
}