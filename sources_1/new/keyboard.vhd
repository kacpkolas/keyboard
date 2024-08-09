library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keyboard is 
Port(
signal ps2_clk_i : in STD_LOGIC;
signal ps2_data_i : in STD_LOGIC;

signal digit_o: out STD_LOGIC_VECTOR(31 downto 0)
);
end keyboard;

architecture Behavioral of keyboard is

signal odczyt: std_logic_vector(10 downto 0);

begin


comb: process(odczyt)
    begin
    digit_o(7 downto 1)<="1111111";
    if odczyt(10)='0' and odczyt(0)='1' then --o ten chodzi
    case odczyt(9 downto 2) is
    when "00111000"=>
            digit_o(7 downto 1) <= "0001000"; --A
            
    when "01001100"=>   
            digit_o(7 downto 1) <= "1100000"; --B
            
    when "10000100" =>
            digit_o(7 downto 1) <= "0110001"; --C
           
    when "11000100" =>
            digit_o(7 downto 1) <= "1000011";   --D
         
    when "00100100"  =>
            digit_o(7 downto 1) <= "0110000"; --E
           
    when "11010100" =>
            digit_o(7 downto 1) <= "0111000";--F
      
    when "01101000"=>
            digit_o(7 downto 1) <= "1001111";--1
         
    when "01111000"=>
            digit_o(7 downto 1) <= "0010010";--2
   
    when "01100100" =>
            digit_o(7 downto 1) <= "0000110";--3
     
    when "10100100" =>
            digit_o(7 downto 1) <= "1001100";  --4 
       
    when "01110100" => 
           digit_o(7 downto 1) <= "0110100"; --5
          
    when "01101100" =>
          digit_o(7 downto 1) <= "0100000"; --6
     
    when "10111100"      =>
         digit_o(7 downto 1) <= "0001101";--7
     
    when "01111100" =>
        digit_o(7 downto 1) <= "0000000";--8
     
    when "01100010" =>
        digit_o(7 downto 1) <= "0001100";--9
   
    when "10100010" =>
        digit_o(7 downto 1) <= "0000001";--0
 
    when "00001111" =>
        null;
      
    when others =>
        digit_o(7 downto 1) <="1111111";--nic
     
    end case;
   
   end if;
end process;

seq: process(ps2_clk_i)
begin
if falling_edge(ps2_clk_i) then
odczyt<=odczyt(9 downto 0) & ps2_data_i;

end if;




end process;

digit_o(31 downto 8)<="111111111111111111111111";
digit_o(0)<='1';

end Behavioral;