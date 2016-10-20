#ListCounts

Många programmeringspråk har funktioner för att summera, hitta största och minsta värdet i listor av tal.
Er uppgift här är att skriva egna funktioner som gör detta och några till som kanske saknas i ert programmeringsspråk.

## Uppgiftsbeskrivning ##

Ni ska skriva funktionerna `sum`, `min`, `max`, `average` som tar en lista av tal, `numbers:` *som argument* och *returnerar* ett tal.

- `sum` returnerar summan av alla tal i `numbers:`
- `min` returnerar det minsta värdet i `numbers:`
- `max` returnerar det högsta värdet i `numbers:`
- `average` returnerar medelvärdet av alla tal i `numbers:`

om `numbers:` är en tom lista (`[]`), returneras `nil` (ruby).


### Exempel ###

```ruby
	sum(numbers: [])
	#=> nil
    
	sum(numbers: [2,3,4,5])
	#=> 14
	
	min(numbers: [2,3,4,5])
	#=> 2
	
	max(numbers: [2,3,4,5])
	#=> 5

	average(numbers: [1,2,3,4])
	#=> 2.5
```


### Flödesschema ###

Innan ni börjar koda ska du skapa ett flödesschema för funktionen.

Testa flödesschemat med penna och papper

### Testning ###

Kör `bundle install` i projektets rotmapp om du inte redan har alla gems installerade.

Kör `ruby test\test_funktionens_namn.rb` eller `rake test` för att köra alla testerna.



### Bonusbana ###

Skapa även funktionen `median`

- `median` returnerar det mittersta värdet i listan, om det mittersta värdet ligger mellan två värden, medelvärdet av dessa två värden

```ruby
	median(numbers: [1,2,3,4,5])
	#=> 3
```

### Länkar ###

Läs mer om listor och loopar och i övning 32 & 34 i [*Learn Ruby the Hard Way*](http://ruby.learncodethehardway.org/book)

* [Learn Ruby the Hard Way - Exercise 32: Loops and Arrays](http://learnrubythehardway.org/book/ex32.html)
* [Learn Ruby the Hard Way - Exercise 34: Accessing Elements of Arrays](http://learnrubythehardway.org/book/ex34.html)
