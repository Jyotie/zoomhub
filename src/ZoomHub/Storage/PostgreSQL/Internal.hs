{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module ZoomHub.Storage.PostgreSQL.Internal where

import           Data.Profunctor.Product.Default (Default)
import           Opaleye                         (Query, Unpackspec,
                                                  showSqlForPostgres)

printSQL :: Default Unpackspec a a => Query a -> IO ()
printSQL = putStrLn . showSqlForPostgres
