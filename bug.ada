procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (others => 0); -- Initialize the array
begin
   for I in MyArr'Range loop
      MyArr(I) := I * 2;
   end loop;
   for I in MyArr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(MyArr(I)));
   end loop;
exception
   when others =>
      Ada.Text_IO.Put_Line("An error occurred");
end Example;