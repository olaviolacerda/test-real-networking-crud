var Welcome = React.createClass({
  render() {
    return (
      <div className="bemvindo">
      Bem vindo ao gerenciador de Usuários | Empresas da RN!
      </div>
    )
  }
});


var Header = React.createClass({
  render() {
    return (
      <header>
      <div className="navbar">
      <a href="../" id="arrow" >&lsaquo;</a>Cadastro
      </div>
      </header>
    )

  }
});

class Links extends React.Component {
  render () {
    return (
      <a href={this.props.title} id={this.props.nome}  className=" ne-links">

      {this.props.nome} <br/> Cadastro
      </a>
    )
  }
}

// class Flash extends React.Component {
//   render () {
//     return (<div className="alert alert-info" role="alert">{this.props.notice} </div>)
//   }
// }

class cadastroMessage extends React.Component {
  render() {
    return (<div className="opcao"><p>Cadastre {this.props.title} e faça parte da RN!</p><br/></div>)
  }
}
class editaMessage extends React.Component {
  render() {
    return (<div className=" opcao"><p>Edite {this.props.title} RN!</p><br/></div>)
  }
}

class OpcoesEdit extends React.Component {
  render () {
    return (
      <a href={this.props.tipo + '/' + this.props.id + '/edit'}>  <div className=" links-cadastro" id={this.props.tipo}>
      {this.props.nome}
      </div></a>)
    }
  }

  class OpcoesNew extends React.Component {
    render () {
      return (
        <a href={'id/'+ this.props.tipo + '/new'}>  <div className=" links-cadastro" id={this.props.tipo}>
        {this.props.nome}
        </div></a>)
      }
    }

    // var SetoresLista = React.createClass({
    //   render: function () {
    //     var setoresNodes =  this.props.data.map(function (setor, i) {
    //       return (
    //         <Setor nome={setor.nome} key={i}/>
    //       );
    //     });
    //     return (
    //       <select className="select-drop">
    //       {setoresNodes}
    //       </select>
    //     );
    //   }
    // });
    //
    //
    // var Setor = React.createClass({
    //   render: function() {
    //     const index = this.props.i;
    //     return (
    //
    //       <option>{this.props.nome}</option>
    //
    //     )
    //   }
    //
    // });
