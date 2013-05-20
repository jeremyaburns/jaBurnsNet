{-----------------------------------------------------------------------------}
{-- Static Page Compiler                                        jaburns.net --}
{-----------------------------------------------------------------------------}

module Main (main) where

-------------------------------------------------------------------------------

import Text.XmlHtml
import Templates

-------------------------------------------------------------------------------

main = do
    doc <- loadView "index.view.html"
    panel <- loadView "indexpanel.partial.html"
    let docWithPanel = insertContent "panels" (docContent panel) doc
    writeFile "compiled/index.html" $ renderView $ docWithPanel
    
    
    