{ stdenv, lib, fetchurl, makeWrapper, jre, scala
}:

with stdenv.lib;
stdenv.mkDerivation rec {
  name = "firrtl-${version}";
  version = "1.1.6";
  scalaVersion = "2.12";

  src = fetchurl {
    url = "https://repo1.maven.org/maven2/edu/berkeley/cs/firrtl_2.12/1.1.6/firrtl_2.12-1.1.6.jar";
    sha256 = "0zjjhx9b3l22a897h8hcrp41hl4cszc40w3xnncrj0nirpp8j75b";
    # date = 2019-03-21T19:49:05+0100;
  };

  propagatedBuildInputs = [ jre scala ] ;
  buildInputs = [ makeWrapper ] ;

  phases = "installPhase";

  installPhase = ''
    mkdir -p $out/lib
    cp ${src} $out/lib/firrtl.jar
    makeWrapper ${jre}/bin/java $out/bin/firrtl \
      --add-flags "-cp ${scala}/lib/scala-library.jar:$out/lib/firrtl.jar firrtl.Driver"
  '';

  meta = {
    description = "Flexible Intermediate Representation for RTL";
    longDescription = ''
      Firrtl is an intermediate representation (IR) for digital circuits
      designed as a platform for writing circuit-level transformations.
      This package of a collection of transformations which simplify,
      verify, transform, or emit their input circuit.
    '';
    homepage = https://github.com/freechipsproject/firrtl;
    license = lib.licenses.bsd3;
    platforms = lib.platforms.all;
  };
}
