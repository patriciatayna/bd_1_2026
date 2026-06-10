DROP TABLE IF EXISTS demo; -- para sqlonline.com
DROP TABLE IF EXISTS Faculdade;
DROP TABLE IF EXISTS Instituto;
DROP TABLE IF EXISTS Departamento;

CREATE TABLE Faculdade (
	sigla VARCHAR(4)
  	CHECK (sigla IN 
      ('FMV', 'FAU', 'FCI', 'FCS', 'FAC', 'FD', 'FACE', 'FE', 'FEF', 'FT', 'FCI', 'FGA', 'FUP')),
  
  	nome VARCHAR(30)
);

CREATE TABLE Instituto (
	sigla VARCHAR(4),
  	nome VARCHAR(30)
);

CREATE TABLE Departamento (
    cod_departamento CHAR(3) PRIMARY KEY, -- para o cod da disc: sigla de 3 letras do dep + 4 digitos inteiros.
    nome VARCHAR(80)
);

INSERT INTO Faculdade (sigla, nome)
	VALUES 
    ('FMV', 'Faculdade de Agronomia e Medicina Veterinária'),
    ('FAU', 'Faculdade de Arquitetura e Urbanismo'),
    ('FCI', 'Faculdade de Ciência da Informação'),
    ('FCS', 'Faculdade de Ciências da Saúde'),
    ('FAC', 'Faculdade de Comunicação'),
    ('FD', 'Faculdade de Direito'),
    ('FACE', 'Faculdade de Economia, Administração, Contabilidade e Gestão de Políticas Públicas'),
    ('FE', 'Faculdade de Educação'),
    ('FEF', 'Faculdade de Medicina'),
    ('FT', 'Faculdade de Tecnologia'),
    ('FCI', 'Faculdade UnB Ceilândia'),
    ('FGA', 'Faculdade UnB Gama'),
    ('FUP', 'Faculdade UnB Planaltina');

INSERT INTO Instituto (sigla, nome)
	VALUES 
    ('IDA','Instituto de Artes'), 
    ('IPOL','Instituto de Ciência Política'), 
    ('IB','Instituto de Ciências Biológicas'), 
    ('IE','Instituto de Ciências Exatas'), 
    ('ICH','Instituto de Ciências Humanas'), 
    ('ICS','Instituto de Ciências Sociais'), 
    ('IF','Instituto de Física'), 
    ('IGD','Instituto de Geociências'), 
    ('IL','Instituto de Letras'), 
    ('IP','Instituto de Psicologia'), 
    ('IQ','Instituto de Química'), 
    ('IREL','Instituto de Relações Internacionais'); 

INSERT INTO Departamento VALUES
    ('CIC', 'Ciência da Computação'),
    ('MAT', 'Matemática'),
    ('EST', 'Estatística'),
    ('ADM', 'Administração'),
    ('CCA', 'Ciências Contábeis e Atuariais'),
    ('ECO', 'Economia'),
    ('JOR', 'Jornalismo'),
    ('COM', 'Comunicação Organizacional'),
    ('LET', 'Línguas Estrangeiras e Tradução'),
    ('LIP', 'Linguística, Português e Línguas Clássicas'),
    ('TEL', 'Teoria Literária e Literaturas'),
    ('ENC', 'Engenharia Civil e Ambiental'),
    ('ENE', 'Engenharia Elétrica'),
    ('ENM', 'Engenharia Mecânica'),
    ('EPR', 'Engenharia de Produção'),
    ('ANT', 'Antropologia'),
    ('ART', 'Artes Visuais'),
    ('BIO', 'Biologia Geral'),
    ('CEN', 'Artes Cênicas'),
    ('CIS', 'Ciências Sociais'),
    ('DIR', 'Direito'),
    ('EDF', 'Educação Física'),
    ('FIL', 'Filosofia'),
    ('FIS', 'Física'),
    ('GEO', 'Geografia'),
    ('HIS', 'História'),
    ('MUS', 'Música'),
    ('PED', 'Pedagogia'),
    ('PSI', 'Psicologia'),
    ('QUI', 'Química'),
    ('REL', 'Relações Internacionais'),
    ('SOC', 'Sociologia'),
    ('TES', 'Teoria do Estado'),
    ('ARQ', 'Arquitetura e Urbanismo'),
    ('NUT', 'Nutrição'),
    ('ODT', 'Odontologia'),
    ('MED', 'Medicina'),
    ('ENF', 'Enfermagem'),
    ('FON', 'Fonoaudiologia'),
    ('TER', 'Terapia Ocupacional'),
    ('VET', 'Medicina Veterinária'),
    ('AGR', 'Agronomia'),
    ('FTA', 'Engenharia de Alimentos'),
    ('GAM', 'Engenharias do Gama'),
    ('AMB', 'Gestão Ambiental'),
    ('BOT', 'Botânica'),
    ('CEL', 'Biologia Celular'),
    ('CFS', 'Ciências Fisiológicas'),
    ('ECL', 'Ecologia'),
    ('FIT', 'Fitopatologia'),
    ('GEM', 'Genética e Morfologia'),
    ('ZOO', 'Zoologia');
