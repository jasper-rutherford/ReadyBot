import "./App.css";
import ScoreChart from "./components/Chart";
import { dummyScores } from "./dummydata";
import ScoreSlider from "./components/ScoreSlider";
import IntervalTextField from "./components/IntervalTextBox";

function App() {
  return (
    <>
      <ScoreChart data={dummyScores} />
      <div className="controls">
        <div className="score">
          <ScoreSlider />
        </div>
        <div className="interval">
          <IntervalTextField />
        </div>
        <div className="go-button">Go</div>
      </div>
    </>
  );
}

export default App;
