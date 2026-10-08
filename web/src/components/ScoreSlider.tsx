import Box from "@mui/material/Box";
import Slider from "@mui/material/Slider";

// todo rename
function valuetext(value: number) {
  return `${value}°C`;
}

function onSliderChange(_event: Event, value: number | number[]) {
  let scoreDiv = document.getElementById("score-label");
  if (scoreDiv) {
    scoreDiv.innerHTML = `Score: ${value}`;
  }
}

export default function ScoreSlider() {
  return (
    <div className="score-slider">
      <Box sx={{ width: 300 }}>
        <div id="score-label">Score: 0</div>
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
