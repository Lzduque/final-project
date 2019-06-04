import React, { Component } from 'react';
import MealView from './MealView/MealView.jsx';
import ViewRecipe from '../RecipeBook/ViewRecipe/ViewRecipe.jsx';
import Nutrition from './Nutrition/Nutrition.jsx';
import request from 'request'

var calories = 0;
var protein = 0;
var fat = 0;
var sugar = 0;
var carbs = 0;


class MealPlan extends Component {
  state = {
    showPopup: false,
    recipes: [], // userRecipes or recipeBook
    recipesByID: null,
    chosenType: null,
    choices: {
      breakfast: null,
      meal: null,
      snack: null,
    },
    viewPopup: false,
    viewRecipe: null,
    servings: null,
    showNutrition: null,
    calories: 0,
    protein: 0,
    fat: 0,
    sugar: 0,
    carbs: 0,
  }

  changeChoice(choice){
    this.setState({
      choices: {
        ...this.state.choices,
        [choice.meal_type]: choice,
      },
      showPopup: false
    });
  }

  componentDidMount() {
    this.fetchRecipes();
    this.fetchSavedPlan();
  }

  filterType = (mealType) => {
    // console.log('mealType: ', mealType)
    this.setState({
      chosenType: mealType,
      showPopup: true,
    })

    fetch(`/api/meal_plans/1/?recipe_id=${this.state.choices[mealType].id}`, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(response => {
      // console.log("response is happening")
      if (response.ok) {
        return response.json();
      } else {
        throw new Error('Something went wrong ...');
      }
    })
    .catch(error => this.setState({
      error
    }))
  }

  fetchSavedPlan = () => {

    fetch(`/api/meal_plans`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(response => response.json())
    .then(data => {
      // console.log('going inside');
      data[0].meal_plan_recipes.forEach(i => {
        this.changeChoice(i.recipe);
      })
    })
    .catch(error => this.setState({ error }))
    // .then(() => console.log("end of fetch", "show", this.state.recipes, "showID", this.state.recipesByID, 'hi', this.state.arrRecipe));
  }

  fetchRecipes = () => {
    // console.log("fetch begins")

    fetch(`/api/books`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(response => response.json())
    .then(data => {
      const recipes = data.map( i => i.recipe)
      this.setState({
        recipes: recipes,
        recipesByID: recipes.reduce(
          (acc, item) => Object.assign(acc, {
            [item.id]: item
          }), {}),
      })
    })
    .catch(error => this.setState({ error }))
    // .then(() => console.log("end of fetch", "show", this.state.recipes, "showID", this.state.recipesByID));
  }

  openView(chosenType){
    this.setState({
      viewPopup : true,
      viewRecipe: chosenType
    })
  }

  togglePopup = (state) => {
    this.setState({viewPopup: state, showPopup: state})
  }

  openNutrition = (mealType) => {
    console.log('mealType on open nutrition', mealType)

    var nutrArr = [];

    var searchQuantity = (quantities, id) => {
      console.log("inside search Quantity");
      return quantities.find(element => element.recipe_id === id).quantity
    }

    mealType.ingredients.map((ingredient) => {
      console.log("inside map ingredient for", ingredient);
      nutrArr.push(searchQuantity(ingredient.quantities, mealType.id));
      nutrArr.push(ingredient.unit);
      nutrArr.push(ingredient.name);
    })
    this.setState({ servings: mealType.servings });
    console.log('serv', mealType.servings, 'nutrArr', nutrArr);

    return nutrArr;
  }

  transform(props) {
    let string = [];
    console.log('props on transform', props);
    while (props.length > 0) {
      let chunk = " " + (props.splice(0, 3).join(" "));
      string.push(chunk);
    }
    var q = string.toString().substring(1);
    console.log("finish transform")
    return q;
  }

  buildRequest = (param) => {
    console.log("inside make request!")
    var options = {
      method: 'POST',
      headers: {
        'postman-token': 'e84dd3d8-9bab-43cc-fbfe-79124b07c6;a3',
        'cache-control': 'no-cache',
        accept: 'application/json',
        'content-type': 'application/json',
        'x-remote-user-id': '0',
        'x-app-key': 'aaf88207f36c8f1a7baf0e5f3da7bde7',
        'x-app-id': 'de975639'
      },
      body: JSON.stringify({
        query: param,
      }),
      json: true
    }
    return options
  }

  updateNutrition(nutrition) {
    this.setState({
      showNutrition: nutrition
    })
  }

  displayNutrition(mealType) {
    const openNutrition = this.transform(this.openNutrition(mealType))

    fetch("https://trackapi.nutritionix.com/v2/natural/nutrients", this.buildRequest(openNutrition)).then((res) => {
      return res.json();
    }).then((body) => {
      this.updateNutrition(body.foods);
    }).catch((err) => { console.error(err) })
  }

  filteredChoices() {
    return this.state.recipes.filter(recipe => this.state.chosenType === recipe.meal_type);
  }

  renderHeader() {
    return (
      <div className="container-1">
        <div className="page-title">
          <h2 className="page-title">Meal Plan Page</h2>
        </div>
      </div>
    );
  }

  renderMeals() {
    return Object.keys(this.state.choices).map(mealType => {
      return (
        <div key={mealType} className="chosen-recipe-container" >
          <h4>{mealType}</h4>
          { this.state.choices[mealType] ? (
              <div>
                <h5>{this.state.choices[mealType].name}</h5>

                <img
                  className="chosen-image"
                  onClick={() => this.openView(this.state.choices[mealType])}
                  src={this.state.choices[mealType].image}
                  alt={this.state.choices[mealType].name || 'Image'} />

                <button
                  className="button-edit"
                  onClick={() => this.filterType(mealType)}
                >EDIT</button>

                <button style={{float: 'right'}}
                  onDoubleClick={this.nutritionShow}
                  onClick={() => this.displayNutrition(this.state.choices[mealType])}
                >Nutrition</button>
              </div>
            ) : <button className="button-meal" onClick={() => this.filterType(mealType)}>+</button>
          }
        </div>
      );
    });
  }

  render() {
    return (
      <div>
        {this.renderHeader()}

        <div className="container-1" >
          <h3>Select Meals for the Day</h3>
          { this.state.showNutrition &&
            <Nutrition
              servings={this.state.servings}
              nutrition={this.state.showNutrition} />
          }
          {this.renderMeals()}
          {this.state.showPopup ?
            <MealView
              choices={this.filteredChoices()}
              change={this.changeChoice}
              closePopup={() => this.togglePopup(false)}
            /> : null }
          {this.state.viewPopup ?
            <ViewRecipe
              recipe={this.state.viewRecipe}
              closePopup={() => this.togglePopup(false)}
            />  : null}
            {/* STATE
            <pre style={{marginTop: '1em'}}>{JSON.stringify(this.state, null, '\t')}</pre>
            PROPS
            <pre style={{marginTop: '1em'}}>{JSON.stringify(this.props, null, '\t')}</pre> */}
          </div>
      </div>
    )
  }
};

export default MealPlan;