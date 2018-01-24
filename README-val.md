1. /scripts/filter-harem/run-scripts/output-default-all.sh

    Este lê o dataset puro do harem e gera xmls filtrados por nível de entidades.

2. /scripts/filter-harem/run-scripts/output-split-train-test-validation.sh

    Este lê os xmls gerados anteriormente e faz o split dos documentos em conjuntos de treino, teste e validação.

3. /scripts/filter-harem/harem-to-opennlp/change-tags-keep-doc-val.sh

    Este lê os xmls gerados anteriormente e extrai somente os textos de cada documento, mantendo um separador entre os documentos, e as anotações das entidades.

4. /tools/open-nlp/run-scripts/sentence-segmentation-val.sh

    Produz os *_(test|train|val)_sent_doc.xml em open-nlp
    
5. /tools/nltk/run-scripts/tokenize-val.sh

    Produz arquivos de texto t-*-(test|train|val)-doc.txt com os tokens em cada linha, com suas anotações
    
6. /tools/nltk/run-scripts/pos-tag-val.sh

    Produz os arquivos de texto pos-*-docs-(test|train|val).txt com os valores das anotações de POS tag

7. /tools/nltk/run-scripts/join-pos-entities.sh

    Une as informações de POS tag e entidades produzidas pelas duas etapas anteriores, de tokenização e POS tag

8. /tools/nltk/run-scripts/output-gold-val.sh

    Varre os arquivos produzidos anteriormente removendo as anotações de DOCSTART e SENTENCE
