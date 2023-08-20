main :: IO ()
main = do
    let c = 10

    if c `mod` 2 == 0
        then putStrLn "Hello world"
        else return ()
