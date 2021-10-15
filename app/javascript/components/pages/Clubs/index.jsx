import React, { useState } from 'react'
import ReactDOM from 'react-dom'
import Navigation from "../../shared/MainNavigation"

const domTarget = document.getElementById('clubs')

const CLUBS_DATA = window['clubs']
window['clubs'] = undefined

const Clubs = () => {

  const [clubsData, setClubsData] = useState()
  
  if (!clubsData) {
    setClubsData(CLUBS_DATA)
    // debugger
    // {clubsData.map(club => <div>{club.name}</div>)}
  }

  return (
    <><Navigation /><div>Clubs</div></>
  )
}

ReactDOM.render(<Clubs/>, domTarget)