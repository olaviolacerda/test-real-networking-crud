window.Post = React.createClass({
	render: function() {
		return <h1>{this.props.title}</h1>
	}
})

// or, equivalent:
class Post extends React.Component {
	render() {
		return <h1>{this.props.title}</h1>
	}
}

handleClick() {
    this.setState({
        open: !this.state.open
    });
}
