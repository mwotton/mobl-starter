module Paths_mobl_starter (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/mwotton/.cabal/bin"
libdir     = "/Users/mwotton/.cabal/lib/mobl-starter-0.1/ghc-7.0.3"
datadir    = "/Users/mwotton/.cabal/share/mobl-starter-0.1"
libexecdir = "/Users/mwotton/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "mobl_starter_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "mobl_starter_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "mobl_starter_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "mobl_starter_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
