# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#id,name
formulations = [
	{ id: 1, name: "Acne: mild inflammatory, mild PIH, melasma (sensitive)" },
	{ id: 2, name: "Acne: inflammatory" },
	{ id: 3, name: "Acne: comedonal, textural irregularities" },
	{ id: 4, name: "Rhytides/poikiloderma (sensitive)" },
	{ id: 5, name: "Rosacea/baseline erythema" },
	{ id: 6, name: "Lentigines 1" },
	{ id: 7, name: "Lentigines 2" },
	{ id: 8, name: "Melasma 1" },
	{ id: 9, name: "Melasma 2" },
	{ id: 10, name: "Apple formula" },
	{ id: 11, name: "Peach formula" },
	{ id: 12, name: "Orange formula" },
	{ id: 13, name: "Melasma 3" },
	{ id: 14, name: "Anti-aging 1" },
	{ id: 15, name: "Anti-aging 2" },
	{ id: 16, name: "Seborrhea 1" },
	{ id: 17, name: "Pseudofolliculitis" },
	{ id: 18, name: "Pityriasis alba" },
	{ id: 19, name: "Acne: pregnant" },
	{ id: 20, name: "PIH: actively inflamed" },
	{ id: 21, name: "Xerosis/Eczema" },
	{ id: 22, name: "Acne: aggressive" },
	{ id: 23, name: "Anti-oxidant" },
	{ id: 24, name: "Anti-aging 3" },
	{ id: 25, name: "Anti-aging 4" },
	{ id: 26, name: "Pear formula" },
	{ id: 27, name: "Grape formula" },
	{ id: 28, name: "Melasma 4" },
	{ id: 29, name: "Rosacea" },
	{ id: 30, name: "Keratosis pilaris" },
	{ id: 31, name: "Melasma 5" },
	{ id: 32, name: "Seborrhea 2" },
]


puts "Seeding formulations"
formulations.each do |formulae_params|
	Formulation.create(formulae_params)
end

#id,name,minimum_percentage,maximum_percentage,description,classes
ingredients = [
	{ 
		id: 1, 
		name: 'Allantoin', 
		min_percentage: 1.0, 
		max_percentage: 2.0, 
		description: 'Helps skin hydration and barrier function.',
		tags: "['Humectants']"
	},
	{ 
		id: 2, 
		name: 'Aloe', 
		min_percentage: 1.0, 
		max_percentage: 2.0, 
		description: 'Reduces skin irritation and burn treatment.',
		tags: "['Anti-Inflammatories']"
	},
	{ 
		id: 36, 
		name: 'Alpha Lipoic Acid', 
		min_percentage: 1.0, 
		max_percentage: 3.0, 
		description: 'An essential acid for cell metabolism and a potent anti-oxidant.',
		tags: "['Pigmentary Regulators','Anti-Oxidants']"
	},
	{ 
		id: 3, 
		name: 'Alpha-Tocopherol (Vitamin E Acetate)', 
		min_percentage: 1.0, 
		max_percentage: 2.0, 
		description: 'A natural antioxidant and anti inflammatory.',
		tags: "['Anti-Oxidants']"
	},
	{ 
		id: 4, 
		name: 'Arbutin', 
		min_percentage: 2.0, 
		max_percentage: 4.0, 
		description: "Naturally extracted from the Bearberry plant, helps prevent the formation of melanin and evens skin tone.",
		tags: "['Pigmentary Regulators']"
	},
	{ 
		id: 5, 
		name: 'Arnica', 
		min_percentage: 2.0, 
		max_percentage: 5.0, 
		description: 'Plant extract that helps to prevent blood vessel leakage / undereye darkening.',
		tags: "['Anti-Ecchymotic']"
	},
	{ 
		id: 6, 
		name: 'Ascorbic Acid', 
		min_percentage: 2.0, 
		max_percentage: 15.0, 
		description: "Vitamin C, helps collagen synthesis, pigment evening, and stabilizing other ingredients.",
		tags: "['Pigmentary Regulators','Anti-Oxidants']"
	},
	{ 
		id: 31, 
		name: 'Ascorbyl Palmitate', 
		min_percentage: 0.5, 
		max_percentage: 2.0, 
		description: "Vitamin C, helps collagen synthesis, pigment evening, and stabilizing other ingredients.",
		tags: "['Anti-Oxidants']"
	},
	{ 
		id: 7, 
		name: 'Azelaic Acid', 
		min_percentage: 5.0, 
		max_percentage: 15.0, 
		description: "Naturally produced by yeast. Reduces bacteria on the skin and inflammation, and regulates pigmentation.",
		tags: "['Anti-Inflammatories','Pigmentary Regulators']"
	},
	{ 
		id: 8, 
		name: 'Benzoyl Peroxide', 
		min_percentage: 2.0, 
		max_percentage: 5.0, 
		description: 'Behaves as an antimicrobial without inducing antibiotic resistance.',
		tags: "['Anti-Microbials']"
	},
	{ 
		id: 29, 
		name: 'Bisabolol', 
		min_percentage: 0.25, 
		max_percentage: 1.0, 
		description: "Derived from chamomile and sage, it assists the penetration of other ingredients and acts as an anti-inflammatory.",
		tags: "['Delivery Enhancers','Anti-Inflammatories']"
	},
	{ 
		id: 9, 
		name: 'Caffeine', 
		min_percentage: 0.5, 
		max_percentage: 2.0, 
		description: 'Quickly penetrates skin and reduces swelling; it is also an anti-oxidant.',
		tags: "['Anti-Inflammatory','Vasoconstrictors']"
	},
	{ 
		id: 30, 
		name: 'Chrysin', 
		min_percentage: 1.0, 
		max_percentage: 3.0, 
		description: "Derived from passion flower, this flavonoid has potent anti-oxidant and anti-cancer activity.",
		tags: "['Anti-Oxidants','Anti-Carcinogens']"
	},
	{ 
		id: 10, 
		name: 'Clindamycin', 
		min_percentage: 0.5, 
		max_percentage: 1.0, 
		description: 'An antibiotic to stop growth of acne-causing bacteria like P. acnes and S. aureus.',
		tags: "['Antibiotics']"
	},
	{ 
		id: 32, 
		name: 'Coenzyme Q-10', 
		min_percentage: 0.5, 
		max_percentage: 2.0, 
		description: "An essential component of the body's metabolism, it helps the skin overcome injury and UV damage.",
		tags: "['Anti-Oxidants']"
	},
	{ 
		id: 11, 
		name: 'Dimethicone', 
		min_percentage: 0.0, 
		max_percentage: 10.0, 
		description: 'Excellent for maintaining skin barrier function.',
		tags: "['Barriers']"
	},
	{ 
		id: 35, 
		name: 'Estradiol', 
		min_percentage: 0.01,
		max_percentage: 0.02,
		description: "A potent form of estrogen, which increases collagen, thus maintaining skin firmness and preventing wrinkles.",
		tags: "['Hormonal Modulators']"
	},
	{ 
		id: 34, 
		name: 'Estriol', 
		min_percentage: 0.1, 
		max_percentage: 0.5, 
		description: "A mild form of estrogen, best known for maintaining the “pregnancy glow”.",
		tags: "['Hormonal Modulators']"
	},
	{ 
		id: 12, 
		name: 'Glycolic Acid', 
		min_percentage: 5.0, 
		max_percentage: 10.0, 
		description: "Derived from sugar cane, this alpha-hydroxy acid brightens skin without causing peeling at low concentrations.",
		tags: "['Keratolytics','Pigmentary Regulators']"
	},
	{ 
		id: 13, 
		name: 'Green Tea Extract', 
		min_percentage: 1.0, 
		max_percentage: 2.0, 
		description: "Derived from Camellia sinensis, rich in antioxidant as well as xanthines (molecules that promote circulation).",
		tags: "['Anti-Oxidants']"
	},
	{ 
		id: 14, 
		name: 'Hyaluronic Acid', 
		min_percentage: 0.5, 
		max_percentage: 2.0, 
		description: 'The most important agent for skin fullness and hydration.',
		tags: "['Humectants']"
	},
	{ 
		id: 16, 
		name: 'Hydrocortisone', 
		min_percentage: 0.5, 
		max_percentage: 2.5, 
		description: 'A mild anti-inflammatory steroid.',
		tags: "['Steroids']"
	},
	{ 
		id: 15, 
		name: 'Hydroquinone', 
		min_percentage: 2.0, 
		max_percentage: 8.0, 
		description: "Naturally found in Bearberry plants, greatly improves hyperpigmentation.",
		tags: "['Pigmentary Regulators']"
	},
	{ 
		id: 40, 
		name: 'Ivermectin', 
		min_percentage: 0.5, 
		max_percentage: 1.0, 
		description: "An anti-parasitic compound that targets Demodex around the hair follicles, reducing inflammation.",
		tags: "['Anti-Parasitic']"
	},
	{ 
		id: 37, 
		name: 'Ketoconazole', 
		min_percentage: 1.0, 
		max_percentage: 3.0, 
		description: 'An anti-fungal that targets nearly all of the problematic fungus on the skin.',
		tags: "['Anti-Fungal','Anti-Inflammatories']"
	},
	{ 
		id: 17, 
		name: 'Kojic Acid', 
		min_percentage: 2.0, 
		max_percentage: 5.0, 
		description: "A product of sake formation, it prevents oxidative darkening.",
		tags: "['Keratolytics','Pigmentary Regulators']"
	},
	{ 
		id: 18, 
		name: 'Lactic Acid', 
		min_percentage: 5.0, 
		max_percentage: 10.0, 
		description: 'Alpha Hydroxy Acid (AHA) extracted from milk that helps exfoliate dead skin.',
		tags: "['Humectants']"
	},
	{ 
		id: 19, 
		name: 'Metronidazole', 
		min_percentage: 0.5, 
		max_percentage: 1.0, 
		description: "Decreases redness, swelling and the number of pimples caused by rosacea and acne.",
		tags: "['Antibiotics']"
	},
	{ 
		id: 20, 
		name: 'Niacinamide', 
		min_percentage: 2.0, 
		max_percentage: 4.0, 
		description: "Vitamin B3- improves inflammation, hydrates skin, and helps prevent skin cancer.",
		tags: "['Anti-Inflammatories','Anti-Carcinogens']"
	},
	{ 
		id: 41, 
		name: 'Oxymetazoline', 
		min_percentage: 0.5, 
		max_percentage: 2.0, 
		description: "Stops over-dilation of blood vessels, reducing swelling and redness.",
		tags: "['Vasoconstrictors']"
	},
	{ 
		id: 25, 
		name: 'Sodium Sulfacetamide', 
		min_percentage: 2.5, 
		max_percentage: 10.0, 
		description: 'A potent anti-inflammatory and also reduces bacterial growth.',
		tags: "['Anti-Microbials','Anti-Inflammatories']"
	},
	{ 
		id: 22, 
		name: 'Spironolactone', 
		min_percentage: 2.0, 
		max_percentage: 5.0, 
		description: 'Effective in the treatment of hormonal acne.',
		tags: "['Hormonal Modulators']"
	},
	{ 
		id: 27, 
		name: 'Tacrolimus', 
		min_percentage: 0.03, 
		max_percentage: 0.1, 
		description: 'A potent non-steroidal anti-inflammatory.',
		tags: "['Anti-Inflammatories']"
	},
	{ 
		id: 39, 
		name: 'Triamcinolone', 
		min_percentage: 0.025, 
		max_percentage: 2.0, 
		description: 'A mid-strength anti-inflammatory steroid.',
		tags: "['Steroid']"
	},
	{ 
		id: 33, 
		name: 'Urea', 
		min_percentage: 1.0, 
		max_percentage: 5.0, 
		description: "Created when the body breaks down proteins, helps to maintain skin hydration and pH balance.",
		tags: "['Humectant']"
	},
	{ 
		id: 24, 
		name: 'Zinc Oxide', 
		min_percentage: 5.0, 
		max_percentage: 10.0, 
		description: '',
		tags: "['Barriers']"
	},
	{ 
		id: 28, 
		name: 'Palmitoyl Pentapeptide-4', 
		min_percentage: 1.0, 
		max_percentage: 5.0, 
		description: 'A messenger peptide that tells cells to produce a stronger matrix (more collagen).',
		tags: "['Collagenesis Upregulator']"
	},
	{ 
		id: 21, 
		name: 'Retinol', 
		min_percentage: 0.1, 
		max_percentage: 3.0, 
		description: "Vitamin A derivative. Important for skin cancer prevention, thickening of the epidermis, regulation of oil glands, collagen synthesis, and exfoliating dead skin cells. Less aggressive than other retinoids such as tretinoin.",
		tags: "['Retinoids']"
	},
	{ 
		id: 23, 
		name: 'Sulfur', 
		min_percentage: 2.0, 
		max_percentage: 4.0, 
		description: 'A potent anti-inflammatory and also reduces bacterial growth.',
		tags: "['Anti-Inflammatories']"
	},
	{ 
		id: 26, 
		name: 'Tretinoin', 
		min_percentage: 0.01, 
		max_percentage: 0.1, 
		description: "Vitamin A derivative. Important for skin cancer prevention, thickening of the epidermis, regulation of oil glands, collagen synthesis, and exfoliating dead skin cells.",
		tags: "['Retinoids','Anti-Carcinogens']"
	},
	{ 
		id: 38, 
		name: 'Vitamin K1', 
		min_percentage: 0.25, 
		max_percentage: 1.0, 
		description: "Active Vitamin K, an essential co-factor for blood clotting.",
		tags: "['Anti-Ecchymotic']"
	}
]

puts "Seeding ingredients"
ingredients.each do |ingredient_params|
	Ingredient.create(ingredient_params)
end



# formulation_id,ingredient_id,percentage
formulation_ingredients = [
	{ formulation_id: 1, ingredient_id: 7, percentage: 10.0 },
	{ formulation_id: 1, ingredient_id: 25, percentage: 5.0 },
	{ formulation_id: 1, ingredient_id: 20, percentage: 2.0 },
	{ formulation_id: 1, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 2, ingredient_id: 8, percentage: 4.0 },
	{ formulation_id: 2, ingredient_id: 20, percentage: 4.0 },
	{ formulation_id: 2, ingredient_id: 10, percentage: 1.0 },
	{ formulation_id: 2, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 3, ingredient_id: 14, percentage: 2.0 },
	{ formulation_id: 3, ingredient_id: 2, percentage: 2.0 },
	{ formulation_id: 3, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 3, ingredient_id: 1, percentage: 1.0 },
	{ formulation_id: 3, ingredient_id: 26, percentage: 0.05 },
	{ formulation_id: 4, ingredient_id: 20, percentage: 4.0 },
	{ formulation_id: 4, ingredient_id: 3, percentage: 1.0 },
	{ formulation_id: 4, ingredient_id: 13, percentage: 1.0 },
	{ formulation_id: 4, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 5, ingredient_id: 25, percentage: 5.0 },
	{ formulation_id: 5, ingredient_id: 20, percentage: 4.0 },
	{ formulation_id: 5, ingredient_id: 19, percentage: 1.0 },
	{ formulation_id: 5, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 6, ingredient_id: 17, percentage: 5.0 },
	{ formulation_id: 6, ingredient_id: 4, percentage: 2.0 },
	{ formulation_id: 6, ingredient_id: 2, percentage: 2.0 },
	{ formulation_id: 6, ingredient_id: 3, percentage: 1.0 },
	{ formulation_id: 6, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 6, ingredient_id: 26, percentage: 0.05 },
	{ formulation_id: 7, ingredient_id: 15, percentage: 4.0 },
	{ formulation_id: 7, ingredient_id: 26, percentage: 0.1 },
	{ formulation_id: 7, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 7, ingredient_id: 14, percentage: 1.0 },
	{ formulation_id: 7, ingredient_id: 31, percentage: 2.0 },
	{ formulation_id: 8, ingredient_id: 17, percentage: 4.0 },
	{ formulation_id: 8, ingredient_id: 15, percentage: 4.0 },
	{ formulation_id: 8, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 8, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 9, ingredient_id: 7, percentage: 10.0 },
	{ formulation_id: 9, ingredient_id: 17, percentage: 4.0 },
	{ formulation_id: 9, ingredient_id: 13, percentage: 2.0 },
	{ formulation_id: 9, ingredient_id: 3, percentage: 1.0 },
	{ formulation_id: 10, ingredient_id: 20, percentage: 3.0 },
	{ formulation_id: 10, ingredient_id: 17, percentage: 3.0 },
	{ formulation_id: 10, ingredient_id: 15, percentage: 2.0 },
	{ formulation_id: 10, ingredient_id: 5, percentage: 2.0 },
	{ formulation_id: 10, ingredient_id: 6, percentage: 2.0 },
	{ formulation_id: 10, ingredient_id: 14, percentage: 2.0 },
	{ formulation_id: 10, ingredient_id: 1, percentage: 1.0 },
	{ formulation_id: 10, ingredient_id: 16, percentage: 0.5 },
	{ formulation_id: 10, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 11, ingredient_id: 6, percentage: 5.0 },
	{ formulation_id: 11, ingredient_id: 20, percentage: 3.0 },
	{ formulation_id: 11, ingredient_id: 14, percentage: 2.0 },
	{ formulation_id: 11, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 12, ingredient_id: 25, percentage: 5.0 },
	{ formulation_id: 12, ingredient_id: 7, percentage: 5.0 },
	{ formulation_id: 12, ingredient_id: 6, percentage: 5.0 },
	{ formulation_id: 12, ingredient_id: 10, percentage: 1.0 },
	{ formulation_id: 12, ingredient_id: 14, percentage: 1.0 },
	{ formulation_id: 12, ingredient_id: 26, percentage: 0.05 },
	{ formulation_id: 13, ingredient_id: 15, percentage: 8.0 },
	{ formulation_id: 13, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 13, ingredient_id: 16, percentage: 2.0 },
	{ formulation_id: 13, ingredient_id: 17, percentage: 4.0 },
	{ formulation_id: 14, ingredient_id: 29, percentage: 0.5 },
	{ formulation_id: 14, ingredient_id: 30, percentage: 3.0 },
	{ formulation_id: 14, ingredient_id: 38, percentage: 0.5 },
	{ formulation_id: 14, ingredient_id: 31, percentage: 2.0 },
	{ formulation_id: 14, ingredient_id: 28, percentage: 3.0 },
	{ formulation_id: 14, ingredient_id: 32, percentage: 1.0 },
	{ formulation_id: 14, ingredient_id: 33, percentage: 1.0 },
	{ formulation_id: 15, ingredient_id: 29, percentage: 0.5 },
	{ formulation_id: 15, ingredient_id: 38, percentage: 0.5 },
	{ formulation_id: 15, ingredient_id: 31, percentage: 2.0 },
	{ formulation_id: 15, ingredient_id: 28, percentage: 3.0 },
	{ formulation_id: 15, ingredient_id: 34, percentage: 0.3 },
	{ formulation_id: 15, ingredient_id: 32, percentage: 1.0 },
	{ formulation_id: 15, ingredient_id: 20, percentage: 3.0 },
	{ formulation_id: 15, ingredient_id: 35, percentage: 0.01 },
	{ formulation_id: 16, ingredient_id: 25, percentage: 8.0 },
	{ formulation_id: 16, ingredient_id: 21, percentage: 3.0 },
	{ formulation_id: 16, ingredient_id: 20, percentage: 2.0 },
	{ formulation_id: 16, ingredient_id: 23, percentage: 2.0 },
	{ formulation_id: 16, ingredient_id: 13, percentage: 1.0 },
	{ formulation_id: 16, ingredient_id: 27, percentage: 0.1 },
	{ formulation_id: 17, ingredient_id: 2, percentage: 2.0 },
	{ formulation_id: 17, ingredient_id: 3, percentage: 2.0 },
	{ formulation_id: 17, ingredient_id: 16, percentage: 1.5 },
	{ formulation_id: 17, ingredient_id: 10, percentage: 1.0 },
	{ formulation_id: 17, ingredient_id: 26, percentage: 0.05 },
	{ formulation_id: 18, ingredient_id: 36, percentage: 3.0 },
	{ formulation_id: 18, ingredient_id: 3, percentage: 2.0 },
	{ formulation_id: 18, ingredient_id: 31, percentage: 2.0 },
	{ formulation_id: 18, ingredient_id: 13, percentage: 2.0 },
	{ formulation_id: 18, ingredient_id: 27, percentage: 0.1 },
	{ formulation_id: 18, ingredient_id: 16, percentage: 2.0 },
	{ formulation_id: 18, ingredient_id: 29, percentage: 0.5 },
	{ formulation_id: 19, ingredient_id: 7, percentage: 10.0 },
	{ formulation_id: 19, ingredient_id: 20, percentage: 2.0 },
	{ formulation_id: 19, ingredient_id: 19, percentage: 0.75 },
	{ formulation_id: 20, ingredient_id: 39, percentage: 0.05 },
	{ formulation_id: 20, ingredient_id: 15, percentage: 6.0 },
	{ formulation_id: 20, ingredient_id: 32, percentage: 1.0 },
	{ formulation_id: 20, ingredient_id: 3, percentage: 2.0 },
	{ formulation_id: 20, ingredient_id: 13, percentage: 2.0 },
	{ formulation_id: 21, ingredient_id: 27, percentage: 0.1 },
	{ formulation_id: 21, ingredient_id: 16, percentage: 2.0 },
	{ formulation_id: 21, ingredient_id: 14, percentage: 2.0 },
	{ formulation_id: 21, ingredient_id: 28, percentage: 3.0 },
	{ formulation_id: 21, ingredient_id: 2, percentage: 2.0 },
	{ formulation_id: 21, ingredient_id: 1, percentage: 2.0 },
	{ formulation_id: 22, ingredient_id: 25, percentage: 5.0 },
	{ formulation_id: 22, ingredient_id: 7, percentage: 5.0 },
	{ formulation_id: 22, ingredient_id: 10, percentage: 1.0 },
	{ formulation_id: 22, ingredient_id: 14, percentage: 1.0 },
	{ formulation_id: 22, ingredient_id: 26, percentage: 0.1 },
	{ formulation_id: 22, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 23, ingredient_id: 36, percentage: 3.0 },
	{ formulation_id: 23, ingredient_id: 3, percentage: 2.0 },
	{ formulation_id: 23, ingredient_id: 32, percentage: 1.0 },
	{ formulation_id: 23, ingredient_id: 13, percentage: 2.0 },
	{ formulation_id: 23, ingredient_id: 21, percentage: 3.0 },
	{ formulation_id: 23, ingredient_id: 20, percentage: 3.0 },
	{ formulation_id: 24, ingredient_id: 29, percentage: 0.5 },
	{ formulation_id: 24, ingredient_id: 30, percentage: 3.0 },
	{ formulation_id: 24, ingredient_id: 31, percentage: 2.0 },
	{ formulation_id: 24, ingredient_id: 28, percentage: 3.0 },
	{ formulation_id: 24, ingredient_id: 32, percentage: 1.0 },
	{ formulation_id: 24, ingredient_id: 33, percentage: 1.0 },
	{ formulation_id: 24, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 24, ingredient_id: 20, percentage: 3.0 },
	{ formulation_id: 25, ingredient_id: 29, percentage: 0.5 },
	{ formulation_id: 25, ingredient_id: 22, percentage: 2.0 },
	{ formulation_id: 25, ingredient_id: 31, percentage: 2.0 },
	{ formulation_id: 25, ingredient_id: 28, percentage: 3.0 },
	{ formulation_id: 25, ingredient_id: 34, percentage: 0.3 },
	{ formulation_id: 25, ingredient_id: 32, percentage: 1.0 },
	{ formulation_id: 25, ingredient_id: 20, percentage: 3.0 },
	{ formulation_id: 25, ingredient_id: 35, percentage: 0.01 },
	{ formulation_id: 25, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 26, ingredient_id: 13, percentage: 1.0 },
	{ formulation_id: 26, ingredient_id: 20, percentage: 4.0 },
	{ formulation_id: 26, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 26, ingredient_id: 3, percentage: 1.0 },
	{ formulation_id: 27, ingredient_id: 7, percentage: 10.0 },
	{ formulation_id: 27, ingredient_id: 17, percentage: 4.0 },
	{ formulation_id: 27, ingredient_id: 13, percentage: 2.0 },
	{ formulation_id: 27, ingredient_id: 3, percentage: 1.0 },
	{ formulation_id: 27, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 28, ingredient_id: 15, percentage: 8.0 },
	{ formulation_id: 28, ingredient_id: 26, percentage: 0.03 },
	{ formulation_id: 28, ingredient_id: 16, percentage: 2.0 },
	{ formulation_id: 28, ingredient_id: 17, percentage: 4.0 },
	{ formulation_id: 28, ingredient_id: 36, percentage: 3.0 },
	{ formulation_id: 29, ingredient_id: 19, percentage: 1.0 },
	{ formulation_id: 29, ingredient_id: 20, percentage: 4.0 },
	{ formulation_id: 29, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 29, ingredient_id: 7, percentage: 5.0 },
	{ formulation_id: 30, ingredient_id: 2, percentage: 1.0 },
	{ formulation_id: 30, ingredient_id: 12, percentage: 6.0 },
	{ formulation_id: 30, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 30, ingredient_id: 14, percentage: 2.0 },
	{ formulation_id: 30, ingredient_id: 1, percentage: 1.0 },
	{ formulation_id: 31, ingredient_id: 15, percentage: 4.0 },
	{ formulation_id: 31, ingredient_id: 16, percentage: 1.0 },
	{ formulation_id: 31, ingredient_id: 17, percentage: 4.0 },
	{ formulation_id: 31, ingredient_id: 36, percentage: 1.0 },
	{ formulation_id: 31, ingredient_id: 12, percentage: 5.0 },
	{ formulation_id: 32, ingredient_id: 23, percentage: 2.0 },
	{ formulation_id: 32, ingredient_id: 20, percentage: 3.0 },
	{ formulation_id: 32, ingredient_id: 37, percentage: 2.0 },
	{ formulation_id: 32, ingredient_id: 13, percentage: 1.0 },
	{ formulation_id: 32, ingredient_id: 27, percentage: 0.1 }
]

puts "Seeding formulation ingredients"
formulation_ingredients.each do |formulae_ingredient_params|
	FormulationIngredient.create(formulae_ingredient_params)
end

puts "Done!"
