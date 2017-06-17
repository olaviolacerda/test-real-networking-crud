var Header = React.createClass({
  render() {
    return (
      <header>
      <nav className="navbar navbar-default">
      <div className="container-fluid">
      &lsaquo;Cadastro
      </div>
      </nav>
      </header>
    )
  }
});

class Links extends React.Component {
  render () {
    return (
      <div className="row">
      <div className="col-xs-6">
      <a href={this.props.title}>
      {this.props.nome} <br/> Cadastro </a>
      </div>
      </div>
    )
  }
}

class Flash extends React.Component {
  render () {
    return (<div className="col-xs-12">{this.props.notice} </div>)
  }
}

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

class OpcoesEdit extends React.Component {
  render () {
    return (<div className="row">
    <div className="col-xs-6">
    <a href={this.props.tipo + '/' + this.props.id + '/edit'}> {this.props.nome}</a>
    </div>
    </div>)
  }
}

class OpcoesNew extends React.Component {
  render () {
    return (<div className="row">
    <div className="col-xs-6">
        <a href={'id/'+ this.props.tipo + '/new'}> {this.props.nome}</a>
    </div>
    </div>)
  }
}


// <div className="burg">
// <div className="bar"></div>
// <div className="bar"></div>
// <div className="bar"></div>
// </div>
