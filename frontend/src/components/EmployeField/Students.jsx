// Students.js

import React, { useEffect } from 'react';
import axios from 'axios';
import config from '../../config';
import { useParams } from 'react-router-dom';

function Students() {
  const staff_id = sessionStorage.getItem('staff_id')

  useEffect(() => {
    axios.get(`${config.apiURL}/attenance/classstudents/${staff_id}`)
      .then((res) => {
        console.log(res.data); // Handle the response data as needed
      })
      .catch((err) => {
        console.error('Error fetching student data:', err);
      });
  }, [staff_id,config.apiURL]);

  return (
    <div>
      <h1>Student List</h1>
      {/* Render your student data here */}
    </div>
  );
}

export default Students;
