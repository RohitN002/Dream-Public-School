// src/StudentStrengthChart.js

import React from 'react';
import { Bar } from 'react-chartjs-2';
import { Chart as ChartJS, CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend } from 'chart.js';
import './Chart.css'
ChartJS.register(CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend);

const StudentStrengthChart = () => {
  // Sample data
  const data = {
    labels: ['2018', '2019', '2020', '2021', '2022'],
    datasets: [
      {
        label: 'Student Strength',
        data: [200, 250, 300, 350, 400],
        backgroundColor: 'rgba(75, 192, 192, 0.2)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1,
      },
    ],
  };

  const options = {
    responsive: true,
    plugins: {
      legend: {
        position: 'top',
      },
      title: {
        display: true,
        text: 'Yearly Student Strength',
      },
    },
  };

  return (
  <div style={{margin:"auto"}}>
<Bar data={data} options={options} />
  </div>)
  ;
};

export default StudentStrengthChart;
