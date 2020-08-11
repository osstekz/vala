class Foo {
}

class Bar : Foo {
}

Bar get_bar () {
	return new Bar ();
}

void main() {
	{
		var bar = new Foo ();
		var foo = bar as Foo;

		assert (foo == bar);
		assert (foo == (bar as Foo));
		assert (bar == (foo as Foo));
	}
	{
		var bar = get_bar () as Foo;
		var foo = bar as Bar;

		assert (foo == bar);
		assert (foo == (bar as Bar));
		assert (bar == (foo as Foo));
	}
}
