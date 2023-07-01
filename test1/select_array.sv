module select_array();
int array1[], array2[];                    //array initilaization
 initial begin
     array1='{4,6,8,76,89, 0,3,4,6,4,6};
   array2='{4,7,8,67,09,4,5,6,7,8,6,78};
     selection(array1,array2); //calling the function in main module
   end
   function void selection (int array1[],int array2[]);  // function to select     one of the array basesd on array size
     if (array1.size()>array2.size())begin    //checking the array size
      $display(" array 1 has been selected");
      $display(" %p", array1);              //displaying the selected array
    end
    else if (array1.size()<array2.size())begin
      $display(" array 2 has been selected");
      $display(" %p", array2);
    end
    else
      $display("no array has been selected");
    endfunction
    endmodule
