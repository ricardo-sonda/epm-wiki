---
type: concept
title: "Fixed-price contract vs internal cost baseline (supplier view)"
tags: [cost, smartxcharge, business-case]
sources: [smartxcharge-business-case-2026-2027, delivery-1-instructions, delivery-2-instructions, delivery-3-instructions, pm-template-d1]
created: 2026-11-15
updated: 2026-11-15
---

# Fixed-price contract vs internal cost baseline

The central commercial distinction in the [[smartxcharge-project]]: what the client **pays** (contract revenue) is separate from what the supplier **spends** (internal cost). Mixing them up is the most likely conceptual error in the deliveries.

## The two numbers

| | Contract value (revenue) | Internal cost baseline (cost) |
|---|---|---|
| Amount | €650,000, fixed | Estimated by the group; refined in D2 |
| Owner | LightEnergy pays AES | AES bears it |
| Changes when | Formal contract amendment via change request | Re-baselining; target final cost within **5%** of approved baseline |
| In MS Project | Billing milestones only — **never entered as costs** | Resource rates × effort, other direct costs, overhead |

([[smartxcharge-business-case-2026-2027]], [[delivery-2-instructions]])

## Revenue: payment milestones

20% at kick-off (€130,000) · 20% at Requirements/Architecture Gate approval (€130,000) · 50% at Lisbon Pilot accepted (€325,000) · 10% at Project Closure approved (€65,000). Amounts are derived from the stated percentages. These are cash-in events and drive AES's cash flow, not its cost.

## Cost: what goes in

1. **Direct labor** — AES roles × daily rate × effort (client roles and the AES Executive Sponsor at €0).
2. **Other direct costs** — only those the delivery approach requires and justifies (travel to Lisbon/Porto, training rooms/materials, tools/cloud, subcontracting…).
3. **Corporate & management overhead** — 12% of total direct labor, entered once as a cost resource or fixed cost, without double-counting.

**Planned margin** = €650,000 − total AES internal cost; Delivery 3 requires it explicitly ([[delivery-3-instructions]]).

## Delivery 1

The Charter's **Initial Internal Cost Estimate** is a high-level estimate of AES delivery cost — explicitly **not** the €650,000 ([[delivery-1-instructions]]). The template breaks it into manpower, materials, suppliers/service providers, financial costs, administration, other ([[pm-template-d1]]).

## Why it matters

Under a fixed price, the supplier carries the cost risk: overruns erode margin directly, which is why scope discipline ([[change-control-and-scope-creep]]) and the 5% cost-control target matter. All numbers: [[smartxcharge-planning-anchors]].
