---
layout: page
title: surfactants 
description: implement effective surface tension in PartMC-MOSAIC
img: assets/img/publication_preview/kc_compare.png
importance: 2
# category: Research
related_publications: xu2022Surfactants
---

Surfactants play a pivotal role in cloud formation process by changing cloud condensation nuclei activity. Their presence creates a film at the gas-liquid interface, resulting in reduced surface tension and altered water transport dynamics. Traditional approach of &kappa-Köhler theory often overlooked the implications of surfactants, particularly their capacity to decrease surface tension by assuming the surface tension of water, which is vital for realistic aerosol mixtures. This research innovatively combines an effective surface tension model with the particle-resolved aerosol model, PartMC-MOSAIC, allowing for a more sophisticated representation of surface tension variations during water uptake of aerosol particles, bypassing the oversimplifications inherent in conven- tional modal or sectional models.


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/publication_preview/single_particle_example.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    An example case of 0.15 &mu;m aerosol particle with chemical species and its percentage shown in pie charts. Left panel is the comparison of Köhler curve, surface tension for using effective surface tension (EST) and consatnt surface tension of water (CST). The surface tension at critical supersaturation is around 54 mN/m.
</div>
