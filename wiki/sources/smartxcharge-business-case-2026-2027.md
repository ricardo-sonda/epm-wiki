---
type: source
title: "SmartXCharge Business Case (GPE 2026-2027)"
authors: ["EPM teaching staff"]
raw: "raw/smartxcharge-business-case-2026-2027.docx"
ingested: 2026-11-15
tags: [smartxcharge, business-case, scope, schedule, cost, stakeholders]
entities: [smartxcharge-project, lightenergy, advance-energy-systems, lisbon-pilot]
concepts: [fixed-price-contract-and-internal-cost-baseline, change-control-and-scope-creep, steering-committee]
created: 2026-11-15
updated: 2026-11-15
---

# SmartXCharge Business Case (GPE 2026-2027)

The case study for the EPM group project ("Peaks, Power, and Savings: The SmartXCharge Challenge at LightEnergy"). It describes a Portuguese energy operator, [[lightenergy]], that awards a €650,000 fixed-price contract to [[advance-energy-systems]] (AES) to deliver SmartXCharge (SXC), a fleet EV-charging management solution. Students plan the project **from the supplier (AES) side**. Annex A is the Client RFP Summary that governs delivery, acceptance and the rollout decision.

## The business problem

- LightEnergy runs four hubs (North, Center, Lisbon, Algarve), several hundred EVs and roughly 200 charge points of mixed makes.
- A Lisbon on-site battery shaves peaks using basic, rule-of-thumb orchestration.
- Data is scattered across the finance/asset system, identity tools and spreadsheets, which makes tariff-window planning, charger-health monitoring, cost allocation and a single version of the truth difficult.
- Peak-hour exposure and occasional contracted-power overruns make the energy bill volatile.

## What SXC must do

Shift charging to cheaper tariff windows within site power caps; centralize charger status/session visibility with essential remote actions; coordinate the Lisbon battery with simple setpoints; integrate with the finance/asset system for automatic cost posting and asset/maintenance records; provide dashboards of consumption, savings, availability and incidents. Interfaces: a **web portal** for managers/operations and a **mobile app** for drivers. AES integrates existing hardware and finance platforms; it does **not** replace chargers or redesign the finance system. Hardware procurement is out of scope.

## Commercial and schedule frame

- Fixed price **€650,000**; turnkey delivery window up to **32 weeks**; Week 0 = contract award (planning assumption: Week 0 = 4 Jan 2027).
- Anchors: Project Plan v1.0 approved by end of Week 4; [[lisbon-pilot]] starts around Week 20 and lasts 4 weeks; completion by about Week 32 with tolerance < 1 week.
- Payment milestones (cash-in, not cost): 20% kick-off · 20% Requirements/Architecture Gate · 50% Lisbon Pilot accepted · 10% Project Closure.
- AES targets final internal costs within **5% of its approved internal cost baseline**, independent of the contract value. See [[fixed-price-contract-and-internal-cost-baseline]].

## Governance (Annex A7)

- Customer Project Sponsor: LightEnergy COO, chairs the monthly 60-min [[steering-committee]].
- Client Project Manager (LightEnergy): coordinates client teams, environments, data, approvals.
- Product Owner (Energy & Fleet): business priorities and acceptance needs.
- Supplier Executive Sponsor: AES Head/Director of Delivery; oversight, resourcing, internal cost escalations.
- Supplier Project Manager (AES): day-to-day delivery and control; main counterpart to the client PM.
- Steering Committee members: Customer Sponsor, Client PM, Client IT representative, Supplier PM (+ Supplier Executive Sponsor when required).
- Control gates: Requirements/Architecture Gate; Lisbon Pilot Authorization; Go/No-Go for National Rollout; Project Closure. Decisions recorded in signed minutes.
- Weekly one-pager: progress vs milestones, plan vs actual, cost vs AES internal baseline, top risks/blockers, decisions needed.

## Phase skeleton (Annex A5)

1. Initiation & Discovery
2. Architecture & Integrations
3. MVP Build
4. System Testing
5. UAT / Lisbon Pilot (4 weeks)
6. Pilot Assessment & Rollout Decision
7. Hardening & National Rollout
8. Stabilization & Closure

This is the mandatory top level of the student WBS; it is not the complete WBS. See [[work-breakdown-structure]].

## RFP deliverables (Annex A3)

BRD & Acceptance Criteria; High-Level Architecture (1-page diagram + ½-page text); Integration Plan; Test & Pilot Plan; Short User/Admin Guide; Training Plan; Cutover & Handover Checklists; Pilot Report (Executive Summary). Full code/API specs and deep runbooks are out of scope. (Delivery 3 says these need not be produced as standalone documents.)

## Functional and non-functional requirements

- **Mobile app (A3.1):** SSO sign-in; locate/select charge point; start/stop; live kW, kWh, elapsed time; session history and export; QR scan with manual fallback; push notifications (start/stop, error, completion); EN + PT; text scaling, dark/light mode; iOS 15+ / Android 10+; OIDC over OAuth 2.0, TLS 1.2+, keychain/keystore token storage.
- **Web portal (A3.2):** KPI dashboard (sessions, kWh, utilization, peak demand, cost) with date/site/charger filters; RBAC with ≥3 roles (Operations, Finance, Back-office); asset inventory with online/offline and firmware info; period reports and CSV/Excel export; audit log; SSO via OIDC or SAML, MFA where policy requires; Chrome/Edge/Safari last two versions; initial load ≤3 s; dashboard refresh ≈60 s.
- **Non-functional (A2):** high monthly availability; prompt admin responses; SSO, RBAC, encryption, audit logs; **privacy assessment completed before the Lisbon Pilot starts**; regular backups with service and transaction recovery; usability and maintainability.

## Change requests, location, training

- Out-of-scope requests are assessed for schedule, cost, risk and quality impact; no out-of-scope work proceeds without written agreement from both parties. See [[change-control-and-scope-creep]].
- AES works mostly off-site; client meetings and key-user training in Lisbon (optionally Porto). LightEnergy provides environments and representative data subject to its security/data-protection policies.
- Training: hands-on for key users, concise integration-monitoring overview for IT; hypercare immediately after national rollout. Tariff model: off-peak / shoulder / peak.

## Where this fits

[[smartxcharge-project]] · [[lightenergy]] · [[advance-energy-systems]] · [[lisbon-pilot]] · [[smartxcharge-planning-anchors]] · [[delivery-1-charter-stakeholders-scope]] · [[delivery-2-ms-project-plan]] · [[delivery-3-final-project-plan]]
