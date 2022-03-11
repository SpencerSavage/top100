// import { Link } from 'react-router-dom';

const Navbar = () => (
  <>
    <ul>
      <Link to='/'>
        <li>Home</li>
      </Link>
      <Link to='/billboard'>
        <li>Billboards</li>
      </Link>
    </ul>
  </>
)

export default Navbar