## BSD
find ./ -type -f -exec sed -i -e '' 's/something/else' {} \;

## GNU
find ./ -type -f -exec sed -i -e 's/something/else' {} \;
