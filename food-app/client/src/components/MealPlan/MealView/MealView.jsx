import React, { Component } from 'react';

const ChoiceCard = (props) => (
  <div className="recipe-card">
    <img className="recipe-image" src={props.image} alt={props.alt || 'Image'}/>
    <div className="recipe-content">
      <p className="recipe-title">{props.name}</p>
      <h6 className="recipe-title">Serves: {props.servings} | Time: {props.time} min</h6>
    </div>
  </div>
);

const ChoiceContainer = (props) => {

  const onChoice = (id) => (evt) => {
    // console.log(evt.target)
    props.onChoice(id);
  }

  return (
    <div className="card-container">
      {
        props.choices.map((choice) => (
          <div className="card-button" key={choice.id} onClick={onChoice(choice.id)}><ChoiceCard
            key={choice.id}
            name={choice.name}
            image={choice.image}
            servings={choice.servings}
            time={choice.time}
            />
          </div>
        ))
      }
    </div>
  )
}

class MealView extends Component {

  constructor(props) {
    super(props);
    this.state = {
      chosenRecipe: null
    }
  }

  getRecipeByID(id) {
    for (let recipe of this.props.choices) {
      console.log('recipe', recipe);
      if (recipe.id === id) {
        return recipe;
      }
    }
    return false;
    // loop through this.props.recipes
    // if recipe.id == id , then return recipe.obj else return null
  }

  choiceSelected = id => {
    let chosenRecipe = this.getRecipeByID(id);
    this.setState({
      chosenRecipe: chosenRecipe
    })
  }

  render() {

    return (
        <div className='popup'>
          <div className='popup-inner'>
          <h1 style={{ 'textAlign' : 'center' }}>Add a Recipe</h1>
          <ChoiceContainer choices={ this.props.choices } onChoice={this.choiceSelected}/>
          <button onClick={() => this.props.change(this.state.chosenRecipe)}>CLOSE</button>
          </div>
        </div>
    )
  }
}

export default MealView;