import "./App.css";
import ScoreChart from "./ChartComponent";
import { dummyScores } from "./dummydata";

function App() {
  return (
    <>
      <ScoreChart data={dummyScores} />
    </>
  );
}

export default App;
