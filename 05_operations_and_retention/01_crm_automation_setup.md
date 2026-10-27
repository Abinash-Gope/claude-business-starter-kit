# ⚙️ 1. CRM Automation

## Why Automated CRM Pipelines Drive Sales Efficiency

Automating manual data entry, deal status updates, and task assignments ensures leads are followed up quickly and deals progress smoothly.

---

## 📊 Standard Pipeline Stages

```
[ New Lead ] ──► [ Contacted ] ──► [ Demo Booked ] ──► [ Proposal Sent ] ──► [ Closed Won ] / [ Closed Lost ]
```

---

## 🤖 Core Automation Rules

| Trigger | Condition | Action |
|---|---|---|
| Form Submitted | New Lead | Assign sales rep + Create deal in "New Lead" |
| Call Booked | Stage = Contacted | Move deal to "Demo Booked" + Send confirmation |
| Proposal Generated | Stage = Demo Booked | Move to "Proposal Sent" + Set 3-day reminder |
| Deal Closed Won | Proposal Signed | Trigger onboarding workflow + Slack alert |
| No Activity (7 Days) | Stage = Proposal | Flag deal as "At Risk" + Notify owner |

---

## 📋 CRM Automation Checklist

- [ ] Map pipeline stages and criteria
- [ ] Connect form submissions to lead creation
- [ ] Automate deal creation and assignment
- [ ] Configure task alerts for deal owners
- [ ] Implement stale lead re-engagement rules
- [ ] Test end-to-end flow with test data
