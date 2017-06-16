


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




  // testando react

  var ListaPessoas = React.createClass({
    render: function () {
      var pessoaNodes = this.props.data.map(function (pessoa, index) {
        return (
          <Pessoa nome={pessoa.nome} email={pessoa.email} key={index} />
        );
      });
      return (
        <div className="ListaPessoas">
        <h1>Lista de Pessoas</h1>
        {pessoaNodes}
        </div>
      );
    }
  });

  var Pessoa = React.createClass({
    render: function() {
      return (
        <div className="col-xs-12">
        <table>
        <thead>
        <tr>
        <th>Nome</th>
        <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td>{this.props.nome}</td>
        <td>{this.props.email}</td>
        </tr>
        </tbody>
        </table>
        </div>
      )
    }
  });
