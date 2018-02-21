import React from 'react';
import './PasswordChecker.scss';

export default class PasswordChecker extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      points: 0
    };
    this.onInputChange = this.onInputChange.bind(this);
    this.checkStrength = this.checkStrength.bind(this);
  }

checkStrength(string) {
  let points = 0;
  if (/\s/.exec(string)) points++;
  if (/[a-z]/.exec(string)) points++;
  if (/[A-Z]/.exec(string)) points++;
  if (/\d/.exec(string)) points++;
  if (/[^a-z0-9\s]/.exec(string)) points++;
  return points;
}

onInputChange(event) {
  let points = this.checkStrength(event.target.value);
  this.setState({
    points: points
  });
}

  render() {
    const strength = {
      0: "weak",
      1: "weakish",
      2: "normal",
      3: "strongish",
      4: "strong"
    };
    return (
      <div>
        <input onChange={this.onInputChange} />
        <p>{strength[this.state.points]}</p>
      </div>
    )
  }
}