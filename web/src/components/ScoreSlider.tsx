import Box from "@mui/material/Box";
import Slider from "@mui/material/Slider";
import { useState } from "react";

export default function ScoreSlider() {
  // state to hold the score value
  const [score, setScore] = useState(0);

  // handler for slider change event
  function onSliderChange(_event: Event, value: number | number[]) {
    setScore(value as number);
  }

  return (
    <div className="score-slider">
      <Box sx={{ width: 300 }}>
        <div id="score-label">Score: {score}</div>
        <Slider
          aria-label="score"
          defaultValue={score}
          valueLabelDisplay="auto"
          shiftStep={1}
          step={1}
          marks
          min={0}
          max={10}
          onChange={onSliderChange}
        />
      </Box>
    </div>
  );
}
