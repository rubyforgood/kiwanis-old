import React, { useState } from 'react'
import ReactDOM from 'react-dom'
import Navigation from "../../shared/MainNavigation"

const domTarget = document.getElementById('events')

const EVENTS_DATA = window['events']
window['clubs'] = undefined

const Events = () => {

  const [eventsData, setEventsData] = useState()
  
  if (!eventsData) {
    setEventsData(EVENTS_DATA)
    // debugger
    // {clubsData.map(club => <div>{club.name}</div>)}
  }

  return (
    <><Navigation /><div>Events</div></>
  )
}

ReactDOM.render(<Events/>, domTarget)