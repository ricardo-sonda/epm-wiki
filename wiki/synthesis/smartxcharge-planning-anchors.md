---
type: synthesis
title: "SmartXCharge planning anchors (all numbers in one place)"
tags: [smartxcharge, schedule, cost, scope]
sources: [smartxcharge-business-case-2026-2027, delivery-1-instructions, delivery-2-instructions, delivery-3-instructions]
sources_consulted: [smartxcharge-business-case-2026-2027, delivery-1-instructions, delivery-2-instructions, delivery-3-instructions]
created: 2026-11-15
updated: 2026-11-15
---

# SmartXCharge planning anchors

A consolidated reference of every fixed number and rule the group must respect across Deliveries 1–3 of [[smartxcharge-project]]. Rows marked *derived* are calculations by the wiki, not stated in the sources.

## Calendar

| Anchor | Value | Source |
|---|---|---|
| Week 0 | Contract award = **Mon 4 Jan 2027** (planning assumption) | Business case A5; D2 |
| Project Plan v1.0 approved | By end of **Week 4** | A5; D2 |
| Lisbon Pilot | Starts **≈ Week 20**, lasts **4 weeks** | A5 |
| Completion | By **Week 32**, tolerance **< 1 week** | A5; D2 |
| Week 4 | *Derived:* Mon 1 – Fri 5 Feb 2027 | — |
| Week 20 start | *Derived:* Mon 24 May 2027; pilot ≈ 24 May – 18 Jun 2027 | — |
| Week 32 | *Derived:* Mon 16 – Fri 20 Aug 2027 | — |

*Derived* dates assume Week n begins on 4 Jan 2027 + 7n days. The MSP calendar `SXC_cal` must include Portuguese non-working days (dates not given in the sources), which will shift working-day counts.

## Decision gates and milestones

Client control gates: Requirements/Architecture Gate · Lisbon Pilot Authorization · Go/No-Go National Rollout · Project Closure. D2 required milestones: Project Plan Approved · Requirements/Architecture Gate Approved · Lisbon Pilot Authorized · Lisbon Pilot Accepted · Go/No-Go for National Rollout · Project Closure Approved. Privacy assessment must be complete **before** the pilot starts.

## Money

| Item | Value |
|---|---|
| Contract (revenue) | **€650,000** fixed price |
| Billing: kick-off | 20% = *€130,000* |
| Billing: Requirements/Architecture Gate approved | 20% = *€130,000* |
| Billing: Lisbon Pilot accepted | 50% = *€325,000* |
| Billing: Project Closure approved | 10% = *€65,000* |
| Overhead | **12% of total direct labor** |
| Cost-control target | Final internal cost within **5%** of approved baseline |

Billing milestones are revenue — never enter them as MSP costs. See [[fixed-price-contract-and-internal-cost-baseline]].

## Resource rates (per day, D2)

| Role | Side | €/day |
|---|---|---|
| Customer Project Sponsor (COO) | LightEnergy | 0 |
| Client Project Manager | LightEnergy | 0 |
| Product Owner (Energy & Fleet) | LightEnergy | 0 |
| Client IT/Security Representative | LightEnergy | 0 |
| Supplier Executive Sponsor | AES | 0 (in overhead) |
| Supplier Project Manager | AES | 750 |
| Solution Architect | AES | 550 |
| Systems Security Specialist | AES | 450 |
| Integration Lead | AES | 400 |
| Test Lead | AES | 400 |
| Data & Reporting Analyst | AES | 400 |
| Trainer | AES | 280 |
| Developer 1 | AES | 250 |
| Developer 2 | AES | 250 |

*Derived sizing aid:* a full-time AES team of all nine paid roles costs €3,730/day of direct labor (€4,177.60 with 12% overhead). Over 160 working days (32 weeks × 5), full-time on every role would be ≈ €597k direct, or ≈ €668k with overhead — above the contract value. Realistic, partial assignments are therefore essential to a positive margin.

## MS Project settings (D2)

Auto Scheduled; schedule from start; Fixed Duration; effort-driven off; 8 h/day, 40 h/week, 20 d/month; FS links by default; no arbitrary lags or constraints; critical path and project summary task visible; baseline set after levelling.

## Pilot minimums ([[lisbon-pilot]])

~30 chargers active · ≥100 sessions · ≥3 battery scenarios · 1 failover/rollback drill · 1 recovery drill · automatic month-end postings · savings vs agreed baseline on dashboards.

## Non-functional numbers

Portal initial load ≤3 s; dashboard refresh ≈60 s; browsers Chrome/Edge/Safari (last two versions); iOS 15+ / Android 10+; TLS 1.2+; ≥3 RBAC roles; EN + PT.

## Submission files

D1 `GPE26-XX-D1.pdf` · D2 `GPE26-XX-D2.mpp` · D3 `GPE26-XX-D3.zip` (main PDF ≤ 25 pages). Deadlines: [[epm-course]].
