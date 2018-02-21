import React from 'react'
import PasswordChecker from './PasswordChecker'

export default class App extends React.Component {

  constructor(props) {
    super(props)
  }

  render() {
    return <div>
      <h1>Enter password</h1>
      <PasswordChecker />
    </div>
  }

}
