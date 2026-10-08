import "./App.css";
import ScoreChart from "./components/Chart";
import { dummyScores } from "./dummydata";
import ScoreSlider from "./components/ScoreSlider";
import IntervalDropdown from "./components/Interval";
import SortButton from "./components/SortButton";

function App() {
  return (
    <>
      <ScoreChart data={dummyScores} />
      <div className="controls">
        <ScoreSlider />
        <IntervalDropdown />
        <SortButton />
      </div>
    </>
  );
}

export default App;
