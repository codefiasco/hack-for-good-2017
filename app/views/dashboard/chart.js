
	var clusterChart;
	
	var clusters;

	var dense;
	
	
	
	d3.json("Regufees.json", function(data) {
												dense = data;
												gen_dense();
												});
													
	
												
	var selectedBar;
	function gen_dense () {
		
		var w = 700;
		var h = 400;
	
		var padding=100;	
		
		var hscale= d3.scale.linear()
			.domain([100,0])
			.range([padding,h-padding]);
		
		
		var cscale= d3.scale.linear()
			.domain([0,65])
			.range(['#334bff','#000a52' ]);
		
		var xscale= d3.scale.linear()
			.domain([0,dense.length])
			.range([padding,w-padding]);
		
		 yaxis = d3.svg.axis()
			.scale(hscale)
			.tickFormat(d3.format("f"))
			.ticks(5)
			.orient("left");

		xaxis = d3.svg.axis()
			.scale(xscale)
			.tickFormat(d3.format("f"))
			.ticks(5)
			.orient("bottom");
		
		var svg= d3.select("#the_chart")
					.append("svg")
					.attr("width",w)
					.attr("height",h+40); 

		svg.selectAll("rect")
					.data(dense)
					.enter()
					.append("rect")
						.attr("fill","orange")
						.attr("width",Math.floor((w-padding*2)/dense.length)-1)
						.attr("height",function(d) {return h-padding-hscale(d.numberOfRefugees);})
						.attr("y",function(d) {return hscale(d.developerConsistency);})
						.attr("x",function(d, i) { return xscale(i); })
						.on("mouseover",function(d,i){
													d3.select(this).attr("style","cursor:pointer;");
													if(i!=selectedBar) d3.select(this).attr("fill","blue");
													var texts=svg.selectAll("text");
													if(i!=selectedBar)
														d3.select(texts[0][i])
															.text(function(d) {return d.publisher;});
														})
						.on("mouseout",function(d,i){
								
													    var texts=svg.selectAll("text");
														d3.select(texts[0][i])
																.text("");
														var allBars = svg.selectAll("rect");
														allBars.attr("stroke","none");
														allBars.attr("fill","orange")
													})
						
		var texts =svg.selectAll("text").data(dense);
			
		
		texts.enter()
			.append("text")
			.style("text-anchor", "middle")
			.style("font-family", "sans-serif")
			.style("font-size", "18px")
			.style("fill", "blue")
			.attr("x",350)
			.attr("y",430)
			.text("");
			
						
						
		svg.append("g")
			.attr("class", "axis") //Assign "axis" class
			.attr("transform", "translate(0," + (h - padding) + ")")
			.call(xaxis)
			.append("text")
			.attr("font-size","5px")
			.attr("x", w - padding)
			.attr("y", 40)
			.style("text-anchor", "end")
			.text("Origin Country");

		svg.append("g")
			.attr("class", "axis") //Assign "axis" class
			.attr("transform", "translate(" + padding + ",0)")
			.call(yaxis)
			.append("text")
			.attr("font-size","5px")
			.attr("y", padding - 10)
			.attr("x", padding + 20)
			.style("text-anchor", "middle")
			.text("Number of Registered Refugees");

		 
				
}

