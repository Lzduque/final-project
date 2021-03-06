import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Welcome from './components/Welcome/Welcome.jsx';
import Profile from './components/Profile/Profile.jsx';
import RecipeBook from './components/RecipeBook/RecipeBook.jsx';
import MealPlan from './components/MealPlan/MealPlan.jsx';
import Secret from './components/Secret/Secret.jsx';

class Routes extends Component {
  // static propTypes = {
  //   cookies: instanceOf(Cookies).isRequired
  // }

  // constructor (props) {
  //   super(props);
    // const { cookies } = props;
    // this.state = {
    //   id: cookies.get('id') || '0'
    // }
  // }

  // componentDidMount() {
  //   if (this.state.id === '0') {
  //     let id = 1; // Changes when there are multiple users
  //     const { cookies } = this.props;

  //     cookies.set('id', id, { path: '/' });
  //     this.setState({ id });
  //   }
  // }

  render() {
    return (
      <Router>
      <div>
        <div className="nav-bar">
          <div className="app-name">
            <h1>Reci-bee</h1>
            <img src="https://github.com/Lzduque/final-project/blob/feature/create-recipe/food-app/docs/free-icon_bee-icon-png-60.png?raw=true" alt="Bee-Icon" height="60" width="60" />
          </div>
          <ul className="nav-links-container">
            <Link className="nav-link" to="/">Welcome</Link>
            {/* <Link className="nav-link" to="/profile">Profile</Link> */}
            <Link className="nav-link" to="/recipebook">Recipe Book</Link>
            <Link className="nav-link" to="/mealplan">Meal Plan</Link>
            <Link className="nav-link secret-button" to="/secret">Secret</Link>
          </ul>
        </div>

        <Route exact path="/" component={Welcome} />
        {/* <Route path="/profile" component={Profile} /> */}
        <Route path="/recipebook" component={RecipeBook} />
        <Route path="/mealplan" component={MealPlan} />
        <Route path="/secret" component={Secret} />
      </div>
    </Router>
    )
  }
};

export default Routes;
