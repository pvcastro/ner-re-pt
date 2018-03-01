1. /scripts/filter-harem/run-scripts/output-default-full.sh

    Este lê o dataset puro do harem e gera xmls filtrados por nível de entidades.
    Filtra não processa tipos e subtipos, e filtra as categorias mantendo somente Local, Organização e Pessoa.

2. /scripts/filter-harem/run-scripts/output-split-full.sh

    Este lê os xmls gerados anteriormente e faz o split dos documentos em conjuntos de treino e teste.
    Realiza somente uma geração de documentos, com 10 folds.

3. /scripts/filter-harem/harem-to-opennlp/change-tags-keep-doc-full.sh

    Este lê os xmls gerados anteriormente e extrai somente os textos de cada documento, mantendo um separador entre os documentos, e as anotações das entidades.

4. /tools/open-nlp/run-scripts/sentence-segmentation-full.sh

    Produz os *_(test|train|val)_sent_doc.xml em open-nlp
    
5. /tools/nltk/run-scripts/tokenize-full.sh

    Produz arquivos de texto t-*-(test|train|val)-doc.txt com os tokens em cada linha, com suas anotações
    
6. /tools/nltk/run-scripts/output-gold-full.sh

    Varre os arquivos produzidos anteriormente removendo as anotações de DOCSTART e SENTENCE
