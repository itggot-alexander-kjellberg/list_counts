# ListCounts

Många programmeringspråk har funktioner för att summera, hitta största och minsta värdet i listor av tal.
Er uppgift här är att skriva egna funktioner som gör detta och några till som kanske saknas i ert programmeringsspråk.

## Uppgiftsbeskrivning ##

Ni ska skriva funktionerna `sum`, `min`, `max`, `average` som tar en lista av tal, `numbers` *som argument* och *returnerar* ett tal.

- `sum` returnerar summan av alla tal i `numbers`
- `min` returnerar det minsta värdet i `numbers`
- `max` returnerar det högsta värdet i `numbers`
- `average` returnerar medelvärdet av alla tal i `numbers`

om `numbers` är en tom lista (`[]`), returneras `nil` (ruby).


### Exempel ###

```ruby
	sum([])
	#=> nil
    
	sum([2,5,4,3])
	#=> 14
	
	min([2,3,40,5])
	#=> 2
	
	max([-2,-3,4,5])
	#=> 5

	average([1,2,3,4])
	#=> 2.5
```


### Flödesschema ###

Innan ni börjar koda ska du skapa ett flödesschema för funktionen.

Testa flödesschemat med penna och papper


### Testning ###

Kör `bundle install` i projektets rotmapp om du inte redan har alla gems installerade.

Kör `rake test` eller `rake test function_name` för att köra alla testerna.


### Länkar ###

Läs mer om listor och loopar och i övning 32 & 34 i [*Learn Ruby the Hard Way*](http://ruby.learncodethehardway.org/book)

* [Learn Ruby the Hard Way - Exercise 32: Loops and Arrays](http://learnrubythehardway.org/book/ex32.html)
* [Learn Ruby the Hard Way - Exercise 34: Accessing Elements of Arrays](http://learnrubythehardway.org/book/ex34.html)
