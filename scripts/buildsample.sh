# Build sample content site
# Tests integration between Hugo and the Next.js build

set -e

SOURCEDIR=$(readlink -f ".")
BUILDDIR=.build
CONTENTBUILD=artifacts

echo 'Cleaning build dir'
rm -rf $BUILDDIR
mkdir $BUILDDIR
cd $BUILDDIR

mkdir $CONTENTBUILD

echo 'Getting Markdown content'
rsync -a $SOURCEDIR/content-sample/* $CONTENTBUILD

echo 'Getting theme'
mkdir -p $CONTENTBUILD/themes/json-theme
rsync -a --exclude-from=$SOURCEDIR/json-theme/.gitignore $SOURCEDIR/json-theme/* $CONTENTBUILD/themes/json-theme

echo 'Running hugo build'
cd $CONTENTBUILD
hugo
cd -

cd -
echo "Build successful"
