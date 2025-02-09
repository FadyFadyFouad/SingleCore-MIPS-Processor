

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ALUPACK is
COMPONENT MUX2X1 IS
         Port ( A : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
END COMPONENT;

COMPONENT MUX16X1 IS
           Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           I4 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC);
END COMPONENT;

COMPONENT FULLADDER IS
           Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC;
           O : out  STD_LOGIC);
END COMPONENT;
end ALUPACK;

package body ALUPACK is


 
end ALUPACK;
