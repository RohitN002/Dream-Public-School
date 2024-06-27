// material-ui
import FormControl from '@mui/material/FormControl';
import InputAdornment from '@mui/material/InputAdornment';
import OutlinedInput from '@mui/material/OutlinedInput';
import Box from '@mui/material/Box';

// assets
import SearchOutlined from '@ant-design/icons/SearchOutlined';

// ==============================|| HEADER CONTENT - SEARCH ||============================== //

export default function Search() {
  return (
    <Box sx={{ width: '100%',ml: { xs: 0, md: 1 },height:'50px',textAlign:'center',marginTop:'-30px',marginTop:"10px"}}  >
      <h3 style={{fontWeight:"bold"}}>Dream Public School</h3>
    </Box>
  );
}
