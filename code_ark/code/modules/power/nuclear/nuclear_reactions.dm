#define AS_LOW_AS_NOTHING 0.000001
#define CHAIN_REACTION_COEFF 80000
#define DECAY_COEFF 20000

/decl/nuclear_reaction  //Nuclear reactions, simillar to fusion and you also can add them as much, as you want.
	var/substance = ""
	var/nflow_requirement = 0
	var/heat_production = 0
	var/nflow_production = 0
	var/list/products = list()  // Just DO NOT forget, products must be = 1 in summary.

/decl/nuclear_reaction/proc/React(var/obj/machinery/power/nuclear_rod/host, var/neutron_amount)
	var/amount_reacting = 0
	var/list/produced_reactants = list()

	if(host.reactants[substance] > AS_LOW_AS_NOTHING)  //To eliminate especially "weak" reactions
		if(nflow_requirement > 0)
			amount_reacting = (1 + neutron_amount/nflow_requirement) * host.reactants[substance] / CHAIN_REACTION_COEFF
		else
			amount_reacting = host.reactants[substance] / DECAY_COEFF

		if(amount_reacting <= 0)
			return 0

		if(host.reactants[substance] - amount_reacting >= 0 )
			host.reactants[substance] -= amount_reacting
		else
			amount_reacting = host.reactants[substance]
			host.reactants[substance] = 0

		host.produced_neutrons += amount_reacting * nflow_production
		host.rodtemp += amount_reacting * heat_production

		for(var/pr_reactant in products)   //Well, this code is mostly copied from R-ust and chemistry, so you can look there for better explanations
			var/success = 0
			for(var/check_reactant in produced_reactants)
				if(check_reactant == pr_reactant)
					produced_reactants[pr_reactant] += products[pr_reactant] * amount_reacting
					success = 1
					break
			if(!success)
				produced_reactants[pr_reactant] = products[pr_reactant] * amount_reacting

		for(var/prreactant in produced_reactants)
			if(prreactant in host.reactants)
				host.reactants[prreactant] += produced_reactants[prreactant]
			else
				host.reactants.Add(prreactant)
				host.reactants[prreactant] = produced_reactants[prreactant]

	return 1




/decl/nuclear_reaction/U235_chain
	substance = "U235"
	nflow_requirement = 5
	heat_production = 10
	nflow_production = 30
	products = list("radioactive waste" = 0.5, "nuclear waste" = 0.5)

/decl/nuclear_reaction/U235_decay
	substance = "U235"
	nflow_requirement = 0
	heat_production = 1
	nflow_production = 3
	products = list("radioactive waste" = 0.05, "nuclear waste" = 0.95)

/decl/nuclear_reaction/radioactive_waste_decay
	substance = "radioactive waste"
	nflow_requirement = 0
	heat_production = 1
	nflow_production = 2
	products = list("nuclear waste" = 1)

/decl/nuclear_reaction/Pu239_chain
	substance = "Pu239"
	nflow_requirement = 7
	heat_production = 15
	nflow_production = 20
	products = list("radioactive waste" = 0.6, "nuclear waste" = 0.4)

/decl/nuclear_reaction/Pu239_Decay
	substance = "Pu239"
	nflow_requirement = 0
	heat_production = 1
	nflow_production = 3
	products = list("radioactive waste" = 0.7, "nuclear waste" = 0.3)

/decl/nuclear_reaction/U238_breed
	substance = "U238"
	nflow_requirement = 50
	heat_production = 5
	nflow_production = 2
	products = list("radioactive waste" = 0.25, "Pu239" = 0.05,  "nuclear waste" = 0.7 )

/decl/nuclear_reaction/Th232_breed
	substance = "Th232"
	nflow_requirement = 10
	heat_production = 1
	nflow_production = 1
	products = list("Th233" = 0.5, "nuclear waste" = 0.5 )



/decl/nuclear_reaction/Th233_decay
	substance = "Th233"
	nflow_requirement = 0
	heat_production = 1
	nflow_production = 1
	products = list("radioactive waste" = 0.5, "nuclear waste" = 0.5 )


/decl/nuclear_reaction/Th233_chain
	substance = "Th233"
	nflow_requirement = 30
	heat_production = 5
	nflow_production = 15
	products = list("radioactive waste" = 0.3, "nuclear waste" = 0.6, "U235" = 0.1)

/decl/nuclear_reaction/Sr90_Decay
	substance = "Sr90"
	nflow_requirement = 0
	heat_production = 5
	nflow_production = 1
	products = list("radioactive waste" = 0.1, "nuclear waste" = 0.9)
