 merge(A,[],A).
merge([],B,B).
merge([A|Ra],[B|Rb],[A|M]):- A =< B,merge(Ra,[B|Rb],M).
merge([A|Ra],[B|Rb],[B|M]):- A > B, merge([A|Ra],Rb,M).