library ieee;
use ieee.std_logic_1164.all;

entity lab2 is
    port (
        i_sw1 : in  std_logic; 
        i_sw2 : in  std_logic; 
        o_led : out std_logic 
    );
end entity lab2;

architecture rtl of lab2 is
    signal sw1_active : std_logic;
    signal sw2_active : std_logic;
begin
   
    sw1_active <= not i_sw1;
    sw2_active <= not i_sw2;

   
    o_led <= sw1_active and sw2_active;

  
end architecture rtl;
