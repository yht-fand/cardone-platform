UPDATE c1_area SET END_DATE = NOW() WHERE INSTR(:ids, areaId) > 0