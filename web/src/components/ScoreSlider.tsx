import Box from "@mui/material/Box";
import Slider from "@mui/material/Slider";

// todo rename
function valuetext(value: number) {
  return `${value}°C`;
}

function onSliderChange(event: Event, value: number | number[]) {
  let scoreText = document.getElementById("score-label");
  if (scoreText) {
    scoreText.innerHTML = `Score: ${value}`;
  }
}

export default function ScoreSlider() {
  return (
    <div>
      <Box sx={{ width: 300 }}>
        <text id="score-label">Score: 0</text>
        <Slider
          aria-label="score"
          defaultValue={0}
          getAriaValueText={valuetext}
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
