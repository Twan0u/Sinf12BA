intuitive append


```OZ
fun {AppendLists L1 L2}

if L1==nil then L2
else L1.1|{AppendLists L1.2 L2}
end
```

```OZ
fun {Fact N} 

	local Fac Fact2 in 
		fun{Fac N}
		if N =< 0 then 1 else N*{Fac N-1} end
	    end
	    fun{Fact2 M}
		    if M>N then nil else
			{Fac M}|{Fact2 M+1}
		    end 
	    end
	    {Fact2 1}
	end
end
```
