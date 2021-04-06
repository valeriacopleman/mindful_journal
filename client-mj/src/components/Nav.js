import React, { Component } from 'react'
import { Link } from 'react-router-dom';


export class Nav extends Component {
    render() {
        return (
            <div>
                <button><Link to="/">Home</Link></button>
            </div>
        )
    }
}

export default Nav
