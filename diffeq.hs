import Data.List
import System.IO
-- import Graphics.EasyPlot

-- quicksort :: (Ord a) => [a] -> [a]
-- quicksort [] = []
-- quicksort (x:xs) =
--     let smallerSorted = quicksort [a | a <- xs, a <= x]
--         biggerSorted = quicksort [a | a <- xs, a > x]
--     in  smallerSorted ++ [x] ++ biggerSorted
--
-- initvalue=1
-- -- Value at y(0)=initvalue
-- tvalues=[0,dt..a]
-- yvalues=[initvalue]
-- iterations=length(tvalues)
--
-- u -> y -> t
-- u=sin(y)cos(t)

a,b,dt :: Double
a=0.0
b=10.0
dt=0.015625

f = \x -> sin x
tvalues=[a,a+dt..b]
yvalues=[f(t)|t <- tvalues]
functiongraph=zip tvalues yvalues
deq :: Double -> Double -> Double
deq y t = sin y * cos t

solveEuler :: [Double] -> (Double -> Double -> Double) -> Double
solveEuler [] deq= 0.0

addone [x] = [x+1]
addone (h:tail) = (h+1):addone tail
factorial n = n * factorial (n - 1)

-- plot functiongraph



-- y(p+dt)=y(p)+y'(p)dt
-- y(p+dt)=y(p)
--i=number of iterations
--d=dt
-- output=[tvalues,yvalues]
