{ stdenv, callPackage, lib, fetchurl, makeWrapper, jre, scala
}:

let
  firrtl = callPackage ./firrtl.nix {};
in

with stdenv.lib;
stdenv.mkDerivation rec {
  name = "firrtl-interpreter-${version}";
  version = "1.1.6";
  scalaVersion = "2.12";

  src = fetchurl {
    url = "https://repo1.maven.org/maven2/edu/berkeley/cs/firrtl-interpreter_${scalaVersion}/${version}/firrtl-interpreter_${scalaVersion}-${version}.jar";
    sha256 = "0flqs283psgvs453s96smhbpv462ad6x09acy20h7lg9qihzq9jd";
    # date = 2019-02-26T10:48:15+0100;
  };

  propagatedBuildInputs = [ jre scala ] ;
  buildInputs = [ makeWrapper ] ;

  phases = "installPhase";

  installPhase = ''
    mkdir -p $out/lib
    cp ${src} $out/lib/firrtl-interpreter.jar
    makeWrapper ${jre}/bin/java $out/bin/firrtl-interpreter \
    --add-flags "-cp ${scala}/lib/scala-library.jar:${firrtl}/lib/firrtkl.jar:$out/lib/firrtl-interpreter.jar firrtl_interpreter.Driver"
  '';

  meta = {
    description = "Simulator for circuits described by a LoFirrtl";
    longDescription = ''
      The firrtl interpreter is an experimental circuit simulator that executes low Firrtl IR.
      It is one of the standard back-ends available as part of the chisel-testers project,
      and thus one of the tools in the UCB-BAR/chisel hardware synthesis toolbox.
      This project provides a test harness supporting a peek, poke expect model.

      It also provides a interactive simulator shell or repl (see frepl.sh) that allows fine grained incremental execution of a circuit.
      In combination with a scala debugger such as Eclipse or IntelliJ it can be a very power way of analyzing problematic behavior.
      The interpreter has not yet been optimzed for performance and may be too slow for emulation of very complex circuits.
    '';
    homepage = https://github.com/freechipsproject/firrtl-interpreter;
    license = lib.licenses.bsd3;
    platforms = lib.platforms.all;
  };
}
