import React, { Component } from 'react'

import Navbar from './Navbar'

import ApiInformation from './ApiInformation'

import AlbumInfoContainer from '../containers/AlbumInfoContainer'
import DemoContainer from '../containers/DemoContainer'

class App extends Component {
  render(){
    return(
      <div>
        <Navbar/>
        <div className="amy-container">
          <ApiInformation />
          <DemoContainer />
          <AlbumInfoContainer />
          </div>
      </div>
    )
  }
}

export default App
