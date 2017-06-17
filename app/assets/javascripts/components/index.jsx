var Header = React.createClass({
  render() {
    return (
      <div>
      <header>
      <span className="arrow">&lsaquo;</span>
      <nav className="navbar">
      &#8287;<div className="cadastro">Cadastro </div>
      <div className="burg">
      <div className="bar"></div>
      <div className="bar"></div>
      <div className="bar"></div>
      </div>
      </nav>
      </header>
      </div> )
    }
  });

  class cadastroMessage extends React.Component {
    render() {
      return (<div className="opcao"><p>Cadastre {this.props.title} e faça parte da RN!</p><br/></div>)
    }
  }
  class editaMessage extends React.Component {
    render() {
      return (<div className="opcao"><p>Edite {this.props.title} RN!</p><br/></div>)
    }
  }
