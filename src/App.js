import React from 'react';
import WeatherComponent from './WeatherComponent';
import BookComponent from './BookComponent';
import { LocationProvider } from './LocationContext';
import LocationInput from './LocationInput';

import './App.css';

function App() {
  return (
    <LocationProvider>
      <div className="App">
        <header className="App-header">
          <h1>Road Trip Planner</h1>
        </header>
        <div className="App-body">
          <LocationInput />
          <WeatherComponent />
          <BookComponent />
        </div>
      </div>
    </LocationProvider>
  );
}

export default App;