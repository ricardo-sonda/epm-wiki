---
type: source
title: "Delivery 2 Instructions — SmartXCharge Business Case"
authors: ["EPM teaching staff"]
raw: "raw/delivery-2-instructions.docx"
ingested: 2026-11-15
tags: [smartxcharge, schedule, cost, scope]
entities: [smartxcharge-project, advance-energy-systems, lightenergy, lisbon-pilot]
concepts: [fixed-price-contract-and-internal-cost-baseline, work-breakdown-structure]
created: 2026-11-15
updated: 2026-11-15
---

# Delivery 2 Instructions

Instructions for building the detailed schedule, resource plan and AES internal cost plan in **Microsoft Project (MSP)**, refining the Delivery 1 estimates. The checklist version is on [[delivery-2-ms-project-plan]]; the numbers are consolidated in [[smartxcharge-planning-anchors]].

## Schedule setup

- New blank project saved as `GPE26-XX-D2.mpp`. Auto Scheduled; schedule from project start.
- Options: Fixed Duration; effort-driven **off**; 8 h/day, 40 h/week, 20 d/month. These instructions override the legacy MSP tutorial.
- Project start / Week 0 = **4 January 2027**. Calendar `SXC_cal` with Portuguese non-working days through the estimated end.
- Load the Delivery 1 WBS (with feedback), keep Annex A5 as top level, and decompose AES work packages into activities.
- PM activities: Project Plan v1.0 approved by end of Week 4; project control as a weekly recurring task (plan approval → closure start) or one continuous control activity; closure after national rollout and stabilization.
- Required milestones: Project Plan Approved; Requirements/Architecture Gate Approved; Lisbon Pilot Authorized; Lisbon Pilot Accepted; Go/No-Go for National Rollout; Project Closure Approved.
- Durations and dependencies: Finish-to-Start by default; zero-duration milestones linked to the work/evidence behind each decision; no orphan tasks, unnecessary constraints or arbitrary lags. Gantt must show the Critical Path and the Project Summary Task.

## Resources (unit cost per day)

Client roles at €0 to AES: Customer Project Sponsor (COO), Client PM, Product Owner (Energy & Fleet), Client IT/Security Representative. Supplier Executive Sponsor: €0 direct rate (covered by overhead). AES rates: Supplier PM €750; Solution Architect €550; Integration Lead €400; Test Lead €400; Systems Security Specialist €450; Developer 1 and Developer 2 €250 each; Data & Reporting Analyst €400; Trainer €280. Assignments should reflect realistic effort, not necessarily 100% utilization.

## Costs

- Direct labor = AES work resources (rate × effort).
- Other direct costs as justified by the delivery approach (travel/accommodation, training rooms/materials, software/tools/cloud, subcontracting, facilities/equipment…). Not every category is expected.
- Corporate & Management Overhead = **12% of total direct labor**, recorded via a Cost Resource or Fixed Cost without double-counting.
- Billing events as commercial milestones: Kick-off 20%; Requirements/Architecture Gate 20%; Lisbon Pilot Accepted 50%; Project Closure Approved 10%. These are **revenue, not costs** — never entered as MSP costs.
- Resolve overallocations manually first, then level if needed; then **set the baseline** (reference for control and Delivery 3).
- Check consistency: plan approval by end of Week 4, pilot start around Week 20, completion by Week 32 (tolerance < 1 week), credible internal cost within the fixed-price context.

## Submission

MS Project file in Fénix by **23:59 on 2 Dec 2026**, named `GPE26-XX-D2.mpp`. Mandatory, receives feedback, not directly graded; late or non-conforming submissions receive no feedback. (Course slides give 4 Dec — see [[epm-course]].)

## Where this fits

[[delivery-2-ms-project-plan]] · [[smartxcharge-planning-anchors]] · [[fixed-price-contract-and-internal-cost-baseline]] · [[smartxcharge-project]]
