school_band = {

	woodwind_section: {
		flute: ['Michael', 'Dwight'],
		clarinet: ['Pam', 'Angela'],
		saxophone: ['Creed', 'Meredith']
	},

	percussion_section: {
		trumpet: ['Stanley', 'Phyllis'],
		trombone: ['Jim', 'Ryan'],
		tuba: 'Kevin'
	},

	brass_section: {
		cymbals: 'Oscar',
		snare_drum: ['Andy', 'Kelly'],
		base_drum: 'Toby'
	}
}

p school_band[:woodwind_section]
p school_band[:woodwind_section][:saxophone]
p school_band[:percussion_section][:tuba]
p school_band[:brass_section][:snare_drum][1]
