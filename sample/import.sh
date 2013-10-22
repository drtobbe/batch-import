#!/bin/bash

echo "Run in main directory: bash sample/import.sh"

rm -rf target/graph.db

java -server -Xmx1G -jar target/batch-import-jar-with-dependencies.jar \
target/graph.db sample/nodes.csv sample/edges.csv \
node_index Concepts exact sample/nodes_index.csv

