CREATE TABLE Press_Raw_Data (
  Machine_Name varchar2,
  Item_No varchar2,
  Working_Time date,
  Press_Time number,
  Pressure_1 number,
  Pressure_2 number,
  Pressure_5 number
);

CREATE TABLE Press_Quality_Result (
  Machine_Name varchar2,
  Item_No varchar2,
  Working_Time date,
  defect number,
  defect_type number
);

CREATE TABLE Welding_Raw_Data (
  Machine_Name varchar2,
  Item_No varchar2,
  Working_Time date,
  Thickness_1 number,
  Thickness_2 number,
  weld_force number,
  weld_current number,
  weld_Voltage number,
  weld_time number
);

CREATE TABLE Welding_Quality_result (
  Machine_Name varchar2,
  Item_No varchar2,
  Working_Time date,
  defect number,
  defect_type number
);