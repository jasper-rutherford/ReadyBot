import Box from "@mui/material/Box";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import TextField from "@mui/material/TextField";
import { useState, type ChangeEvent } from "react";
import Select, { type SelectChangeEvent } from "@mui/material/Select";

export default function Interval() {
  // State to hold the interval number and units (defaults to 2 Months)
  const [intervalNum, setIntervalNum] = useState("2");
  const [intervalUnits, setIntervalUnits] = useState("Months");

  // text field change handler
  const handleTextFieldChange = (event: ChangeEvent<HTMLInputElement>) => {
    // only accept numbers
    const onlyNums = event.target.value.replace(/[^0-9]/g, "");
    setIntervalNum(onlyNums);
  };

  // dropdown change handler
  const handleSelectChange = (event: SelectChangeEvent) => {
    setIntervalUnits(event.target.value);
  };

  return (
    <Box sx={{ minWidth: 120 }} className="interval">
      {/* Display current interval */}
      <div>
        Interval: {intervalNum} {intervalUnits}
      </div>
      <div className="flex">
        {/* Text field for interval number */}
        <TextField
          id="filled-basic"
          variant="filled"
          value={intervalNum}
          onChange={handleTextFieldChange}
        />
        {/* Dropdown for interval units */}
        <FormControl fullWidth>
          <Select value={intervalUnits} onChange={handleSelectChange}>
            <MenuItem value={"Days"}>Days</MenuItem>
            <MenuItem value={"Weeks"}>Weeks</MenuItem>
            <MenuItem value={"Months"}>Months</MenuItem>
            <MenuItem value={"Years"}>Years</MenuItem>
          </Select>
        </FormControl>
      </div>
    </Box>
  );
}
