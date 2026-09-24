# hydrogeologicalghana: Hydrogeological dynamics in the greater Accra and Ashanti regions of Ghana

This dataset contains measurements of pumping tests that were
systematically conducted at each borehole to assess crucial
hydrogeological parameters, specifically focusing on pumping rates and
drawdown.

## Usage

``` r
hydrogeologicalghana
```

## Format

A tibble with 12 rows and 10 variables

- date:

  Date of the measurement.

- region:

  Name of the region where the borehole was drilled.

- community:

  Name of the community where the borehole was drilled.

- depth:

  Vertical distance from the surface of the ground to the bottom of the
  borehole, measured in meters (m). The depth of a borehole determines
  how deep the drilling process goes to reach the desired aquifer or
  geological layer.

- static_water_level:

  Llevel of water in the borehole when no pumping is taking place. It is
  measured from the ground surface down to the water surface inside the
  borehole. This measurement is crucial for determining the natural
  water table level and the initial conditions of the aquifer.

- pumping_rate:

  Volume of water being extracted from the borehole per unit of time,
  typically measured in liters per minute (l/min). This rate is
  essential for determining the efficiency and capacity of the borehole,
  as well as for designing the pump system.

- drawdown:

  Difference between the static water level and the water level in the
  borehole after pumping has started. It indicates how much the water
  level has dropped due to pumping and is measured in meters (m).
  Drawdown helps in understanding the impact of pumping on the aquifer
  and is essential for calculating the sustainable yield of the
  borehole.

- specific_capacity:

  Measure of the productivity of a borehole, defined as the pumping rate
  per unit drawdown. It is expressed in terms of volume per unit time
  per unit drawdown, commonly m\_/day per meter of drawdown, which can
  be simplified to m\_/day. This parameter helps in assessing the
  efficiency of the borehole and the aquifer's ability to transmit water
  to the borehole.

- transmissivity:

  Measure of how much water can be transmitted horizontally through the
  aquifer material over a unit width and is measured in cubic meters per
  day (m\_/day). It is a product of the hydraulic conductivity of the
  aquifer and the saturated thickness of the aquifer. High
  transmissivity indicates a highly productive aquifer.

- aquifer_material:

  Type of geological materials (such as sand, gravel, limestone, or
  sandstone) that make up the aquifer from which the borehole extracts
  water. The characteristics of these materials, including their
  porosity and permeability, influence the aquifer's ability to store
  and transmit water. Understanding the aquifer material is critical for
  assessing the water quality and the potential yield of the borehole.
