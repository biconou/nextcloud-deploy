#!/bin/bash

sed -i "s/^);$/  'overwriteprotocol' => 'https',\n\);/g" config.php
