USE BRASIL_COVID
CREATE TABLE RAW_BR(
[Id] VARCHAR (250),
[DataNotificacao] VARCHAR (250),
[DataInicioSintoma] VARCHAR (250),
[DataNascimento] VARCHAR (250),
[Sintomas] VARCHAR (250),
[ProfissionalSaude] VARCHAR (250),
[Cbo] VARCHAR (250),
[Condicoes] VARCHAR (250),
[EstadoTeste] VARCHAR (250),
[DataTeste] VARCHAR (250),
[TipoTeste] VARCHAR (250),
[ResultadoTeste] VARCHAR (250),
[PaisOrigem] VARCHAR (250),
[Sexo] VARCHAR (250),
[Estado] VARCHAR (250),
[EstadoIBGE] VARCHAR (250),
[Municipio] VARCHAR (250),
[MunicipioIBGE] VARCHAR (250),
[Origem] VARCHAR (250),
[CNES] VARCHAR (250),
[EstadoNotificacao] VARCHAR (250),
[EstadoNotificacaoIBGE] VARCHAR (250),
[MunicipioNotificacao] VARCHAR (250),
[MunicipioNotificacaoIBGE] VARCHAR (250),
[Excluido] VARCHAR (250),
[Validade] VARCHAR (250),
[Idade] VARCHAR (250), 
[DtEncerramento] VARCHAR (250),
[Evolucao] VARCHAR (250),
[ClassFinal] VARCHAR (250),
[Arquivo] VARCHAR (250)
)

SELECT * FROM RAW_BR

SELECT * FROM RAW_COVID
WHERE Municipio = 'Ouro Branco'


DROP TABLE RAW_COVID