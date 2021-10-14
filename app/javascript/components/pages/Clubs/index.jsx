import React, { useState } from 'react'
import ReactDOM from 'react-dom'

const domTarget = document.getElementById('clubs')

const CLUBS_DATA = window['clubs']
window['clubs'] = undefined

const Clubs = () => {

  const [clubsData, setClubsData] = useState()
  
  if (!clubsData) {
    setClubsData(CLUBS_DATA)
    debugger
  }

  return (
    <div>Clubs
    {clubsData.map(club => <div>{club.name}</div>)}
    </div>
  )
}

ReactDOM.render(<Clubs/>, domTarget)