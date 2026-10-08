import { BarChart } from "@mui/x-charts/BarChart";
import type { ScoreData } from "../dummydata";

type Props = { data: ScoreData[] };

const ROW_HEIGHT = 40;

export default function ScoreChart({ data }: Props) {
  const sorted = [...data].sort((a, b) => b.score - a.score);
  const maxScore = Math.max(...data.map((d) => d.score));

  return (
    <BarChart
      margin={{ top: 20, right: 20, bottom: 20, left: 20 }}
      layout="horizontal"
      height={sorted.length * ROW_HEIGHT + 80}
      yAxis={[
        {
          scaleType: "band",
          data: sorted.map((d) => d.song),
          width: 120,
        },
      ]}
      xAxis={[
        {
          label: "Score",
          max: Math.ceil(maxScore * 1.15),
        },
      ]}
      series={[
        {
          data: sorted.map((d) => d.score),
          barLabel: "value",
          barLabelPlacement: "outside",
        },
      ]}
      slotProps={{
        tooltip: { trigger: "axis" },
      }}
    />
  );
}
