{ mkDerivation, base, brick, byteunits, conduit, containers
, directory, fetchgit, filepath, lens, optparse-applicative
, pointedlist, process, stdenv, time, vector, vty
}:
mkDerivation {
  pname = "clifm";
  version = "0.5.3.0";
  src = fetchgit {
    url = "git://github.com/pasqu4le/clifm.git";
    sha256 = "010qdwvgz0dxz5q0zp15lqykil2zicb9sqh3gy1vzy42fm2n1zpl";
    rev = "3c37a4e002de1ba7d8ad872bd8140a07d12a14b2";
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base brick byteunits conduit containers directory filepath lens
    optparse-applicative pointedlist process time vector vty
  ];
  homepage = "https://github.com/pasqu4le/clifm";
  description = "Command Line Interface File Manager";
  license = stdenv.lib.licenses.bsd3;
}
