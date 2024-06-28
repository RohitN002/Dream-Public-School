// src/TeacherPresenceChart.js

import React, { useState } from 'react';
import { Line } from 'react-chartjs-2';
import { Chart as ChartJS, Title, Tooltip, Legend, LineElement, PointElement, LinearScale, CategoryScale } from 'chart.js';
  // Import the CSS file

ChartJS.register(
  Title,
  Tooltip,
  Legend,
  LineElement,
  PointElement,
  LinearScale,
  CategoryScale
);

const TeacherPresenceChart = () => {
  // Sample data
  const [filter, setFilter] = useState('months'); // Default filter is 'months'

  const data = {
    labels: filter === 'dates' ?
      ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'] : // Labels for dates
      ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], // Labels for months
    datasets: [
      {
        label: 'Teacher Count', // Updated label
        data: filter === 'dates' ?
          [8, 7, 8, 6, 7] : // Sample data for dates
          [20, 25, 22, 27, 30, 28, 25, 24, 26, 23, 22, 21], // Sample data for months
        fill: false,
        borderColor: 'rgba(75, 192, 192, 1)',
        tension: 0.1,
      },
    ],
  };

  const handleChangeFilter = (event) => {
    setFilter(event.target.value);
  };

  const options = {
    responsive: true,
    plugins: {
      legend: {
        position: 'top',
        labels: {
          font: {
            size: 14,
          },
          color: '#333',
        },
      },
      title: {
        display: true,
        text: `Teacher Count (${filter === 'dates' ? 'Daily' : 'Monthly'})`,
        font: {
          size: 20,
        },
        color: '#333',
      },
      tooltip: {
        backgroundColor: 'rgba(0, 0, 0, 0.7)',
        titleFont: {
          size: 14,
        },
        bodyFont: {
          size: 12,
        },
      },
    },
    scales: {
      x: {
        title: {
          display: true,
          text: filter === 'dates' ? 'Date' : 'Month',
          font: {
            size: 16,
          },
          color: '#333',
        },
      },
      y: {
        title: {
          display: true,
          text: 'Teacher Count', // Updated y-axis title
          font: {
            size: 16,
          },
          color: '#333',
        },
        beginAtZero: true,
      },
    },
  };

  return (
    <div className="chart-container">
      <div className="filter-container">
        <label>
          Filter by:
          <select value={filter} onChange={handleChangeFilter}>
            <option value="dates">Date</option>
            <option value="months">Month</option>
          </select>
        </label>
      </div>
      <div className="line-chart-wrapper">
        <Line data={data} options={options} />
      </div>
    </div>
  );
};

export default TeacherPresenceChart;
