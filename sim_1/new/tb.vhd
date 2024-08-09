----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2024 12:20:05
-- Design Name: 
-- Module Name: tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is
component top is

    Port ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           ps2_clk_i : in STD_LOGIC;
           ps2_data_i : in STD_LOGIC;
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal clk_i : std_logic:='0';
signal rst_i : std_logic;
signal ps2_clk_i: std_logic;
signal ps2_data_i:std_logic;
signal led7_an_o : std_logic_vector(3 downto 0);
signal led7_seg_o: std_logic_vector(7 downto 0);


begin
clk_i<=not clk_i after 5ns;

dut: top port map(
clk_i=>clk_i,
rst_i=>rst_i,
ps2_clk_i=>ps2_clk_i,
ps2_data_i=>ps2_data_i,
led7_an_o=>led7_an_o,
led7_seg_o=>led7_seg_o
);

stim :process
begin




end process;
end Behavioral;
