# ruby encoding: utf-8
setores = Setor.create! [{nome: 'Indústria'}, {nome: 'Comércio'}, {nome: 'Tecnologia'}]
pessoa = Pessoa.create! nome: 'Olavio', email: 'olavio@olaviolacerda'
empresa = Empresa.create! nome: 'RealNetworking', setor_id: 3
