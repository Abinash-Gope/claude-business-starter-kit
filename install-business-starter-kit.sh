#!/usr/bin/env bash
# Claude Business Starter Kit Installer
# One-command setup for the complete Business Starter Kit

set -e

echo "🚀 Installing Claude Business Starter Kit..."

# Base directory
BASE_DIR="C:\Code\Main Project\Building App"

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p "$BASE_DIR/01_strategy"
mkdir -p "$BASE_DIR/02_web_and_marketing"
mkdir -p "$BASE_DIR/03_lead_gen_and_outreach"
mkdir -p "$BASE_DIR/04_sales_execution"
mkdir -p "$BASE_DIR/05_operations_and_retention"
mkdir -p "$BASE_DIR/06_analytics_and_qa"

# Create README.md
if [ ! -f "$BASE_DIR/README.md" ]; then
    cat > "$BASE_DIR/README.md" << 'README_EOF'
# 🚀 Claude Business Starter Kit

Welcome to your complete, production-ready Business Starter Kit! This kit transforms 26 core business creation tasks into structured, actionable playbooks, frameworks, and templates.

---

## 📌 Master Task Checklist & Navigation

| # | Task | Module & Playbook File | Status |
|---|---|---|---|
| **1** | Build a website | [`02_web_and_marketing/01_website_blueprint.md`](02_web_and_marketing/01_website_blueprint.md) | 📋 Ready |
| **2** | Find a profitable niche | [`01_strategy/01_niche_research.md`](01_strategy/01_niche_research.md) | 📋 Ready |
| **3** | Research competition | [`01_strategy/02_competitor_analysis.md`](01_strategy/02_competitor_analysis.md) | 📋 Ready |
| **4** | Identify ideal customers | [`01_strategy/03_ideal_customer_profiles.md`](01_strategy/03_ideal_customer_profiles.md) | 📋 Ready |
| **5** | Find potential customers | [`03_lead_gen_and_outreach/01_prospect_sourcing_guide.md`](03_lead_gen_and_outreach/01_prospect_sourcing_guide.md) | 📋 Ready |
| **6** | Generate leads | [`03_lead_gen_and_outreach/02_lead_generation_system.md`](03_lead_gen_and_outreach/02_lead_generation_system.md) | 📋 Ready |
| **7** | Create my offers | [`01_strategy/04_offer_design.md`](01_strategy/04_offer_design.md) | 📋 Ready |
| **8** | Set my pricing | [`01_strategy/05_pricing_strategy.md`](01_strategy/05_pricing_strategy.md) | 📋 Ready |
| **9** | Cold email sequences | [`03_lead_gen_and_outreach/03_cold_email_sequences.md`](03_lead_gen_and_outreach/03_cold_email_sequences.md) | 📋 Ready |
| **10** | Personalize outreach | [`03_lead_gen_and_outreach/04_personalization_playbook.md`](03_lead_gen_and_outreach/04_personalization_playbook.md) | 📋 Ready |
| **11** | Sales proposals | [`03_lead_gen_and_outreach/05_sales_proposal_template.md`](03_lead_gen_and_outreach/05_sales_proposal_template.md) | 📋 Ready |
| **12** | Build a landing page | [`02_web_and_marketing/02_landing_page_framework.md`](02_web_and_marketing/02_landing_page_framework.md) | 📋 Ready |
| **13** | Marketing content | [`02_web_and_marketing/03_marketing_content_calendar.md`](02_web_and_marketing/03_marketing_content_calendar.md) | 📋 Ready |
| **14** | Design ad creatives | [`02_web_and_marketing/04_ad_creatives_playbook.md`](02_web_and_marketing/04_ad_creatives_playbook.md) | 📋 Ready |
| **15** | Build a sales funnel | [`02_web_and_marketing/05_sales_funnel_architecture.md`](02_web_and_marketing/05_sales_funnel_architecture.md) | 📋 Ready |
| **16** | CRM automation | [`05_operations_and_retention/01_crm_automation_setup.md`](05_operations_and_retention/01_crm_automation_setup.md) | 📋 Ready |
| **17** | Follow-up sequences | [`04_sales_execution/03_follow_up_sequences.md`](04_sales_execution/03_follow_up_sequences.md) | 📋 Ready |
| **18** | Sales call scripts | [`04_sales_execution/01_sales_call_scripts.md`](04_sales_execution/01_sales_call_scripts.md) | 📋 Ready |
| **19** | Handle objections | [`04_sales_execution/02_objection_handling_matrix.md`](04_sales_execution/02_objection_handling_matrix.md) | 📋 Ready |
| **20** | Create case studies | [`04_sales_execution/04_case_study_template.md`](04_sales_execution/04_case_study_template.md) | 📋 Ready |
| **21** | Customer onboarding | [`05_operations_and_retention/02_client_onboarding_process.md`](05_operations_and_retention/02_client_onboarding_process.md) | 📋 Ready |
| **22** | Automate repetitive tasks | [`05_operations_and_retention/03_workflow_automation.md`](05_operations_and_retention/03_workflow_automation.md) | 📋 Ready |
| **23** | Track performance | [`06_analytics_and_qa/01_performance_tracking_dashboard.md`](06_analytics_and_qa/01_performance_tracking_dashboard.md) | 📋 Ready |
| **24** | Improve conversion rate | [`06_analytics_and_qa/02_cro_optimization_guide.md`](06_analytics_and_qa/02_cro_optimization_guide.md) | 📋 Ready |
| **25** | Retain customers | [`05_operations_and_retention/04_customer_retention_playbook.md`](05_operations_and_retention/04_customer_retention_playbook.md) | 📋 Ready |
| **26** | Make no mistakes | [`06_analytics_and_qa/03_qa_and_error_proofing.md`](06_analytics_and_qa/03_qa_and_error_proofing.md) | 📋 Ready |

---

## 🗂 Structure Overview

- **`01_strategy/`**: Market positioning, niche selection, competitor analysis, ICP, offer stack, pricing.
- **`02_web_and_marketing/`**: Website blueprints, landing pages, content calendar, ad copy, sales funnel design.
- **`03_lead_gen_and_outreach/`**: Prospect sourcing, lead magnets, cold email templates, personalization engine, proposals.
- **`04_sales_execution/`**: Sales scripts, objection handling battlecards, follow-up cadences, case study frameworks.
- **`05_operations_and_retention/`**: CRM pipelines, client onboarding workflows, Zapier/Make automations, churn prevention.
- **`06_analytics_and_qa/`**: Metric tracking dashboard, CRO optimization strategies, pre-flight QA error-proofing.

---

## 💡 How to Use This Kit

1. Start with **`01_strategy/01_niche_research.md`** to validate your business idea and target market.
2. Build your core offer and pricing model in **`01_strategy/04_offer_design.md`** & **`05_pricing_strategy.md`**.
3. Deploy your marketing assets using **`02_web_and_marketing/`**.
4. Launch outbound and inbound acquisition with **`03_lead_gen_and_outreach/`** & **`04_sales_execution/`**.
5. Streamline operations and ensure quality with **`05_operations_and_retention/`** & **`06_analytics_and_qa/`**.

README_EOF
    echo "✅ Created README.md"
fi

# Create 01_strategy files
echo "📝 Creating 01_strategy modules..."

# 01_niche_research.md
cat > "$BASE_DIR/01_strategy/01_niche_research.md" << 'NICHE_EOF'
# 🎯 1. Find a Profitable Niche

## Why Niche Selection Determines Business Success

Selecting the correct niche prevents generic market saturation and maximizes customer willingness-to-pay. A well-defined niche should show clear demand, moderate competition intensity, and high pain severity.

---

## 🔍 Niche Research Framework

### Step 1: Generate Niche Concepts
Brainstorm intersections between **your skill**, **market pain**, and **willingness-to-pay**.
- **Skills Matrix**: List 5-10 core competencies you can monetize.
- **Pain Point Harvest**: Scour Reddit, Slack groups, LinkedIn, and competitor review sites.
- **Demand Check**: Search Google Trends, Keyword Planner, and job boards for active demand signals.

### Step 2: Validate Demand & Profitability
Use the **Niche Scoring Model**.

| Criteria | Weight | Score (1-5) | Weighted |
|---|---|---|---|
| Search Volume / Market Activity | 25% | | |
| Pain Severity (Urgent vs Nice-to-have) | 25% | | |
| Willingness-to-Pay (Budget Availability) | 20% | | |
| Competition Saturation | 15% | | |
| Barrier to Entry for You | 15% | | |
| **Total Score** | 100% | | |

> **Rule of Thumb**: Target a niche scoring ≥70/100 with Pain Severity ≥4.

### Step 3: TAM/SAM/SOM Calculation
- **TAM** (Total Addressable Market): Total market size if 100% share.
- **SAM** (Serviceable Addressable Market): Portion of TAM you can realistically serve.
- **SOM** (Serviceable Obtainable Market): Realistic share you can capture in Year 1.

Formula: `SOM = SAM × Target Market Share%`

---

## 📋 Niche Research Checklist

- [ ] List 10+ niche candidates
- [ ] Score each candidate using Niche Scoring Model
- [ ] Validate demand signals via keyword/trend tools
- [ ] Identify underserved sub-segments
- [ ] Calculate TAM/SAM/SOM for top 3 candidates
- [ ] Choose niche with ≥70 score and clear entry point

---

## ✅ Quick Win Template

| Niche | Score | Pain Level | Competition | SOM Estimate |
|---|---|---|---|---|
| [e.g. AI Consulting for SMBs] | 78 | 5 | Medium | $120K Y1 |

NICHE_EOF
    echo "✅ Created 01_niche_research.md"

# 02_competitor_analysis.md
cat > "$BASE_DIR/01_strategy/02_competitor_analysis.md" << 'COMPETITOR_EOF'
# 🔎 2. Research Competition

## Why Competitive Intelligence Wins

Knowing your competitors' strengths, weaknesses, pricing, and positioning enables you to exploit gaps, refine your offer, and differentiate strategically rather than copying generically.

---

## 🔎 Competitor Identification & Taxonomy

### A. Direct Competitors
Companies offering identical or near-identical solutions to the same ICP.

### B. Indirect Competitors
Companies solving similar problems with alternative approaches (e.g., DIY tools, "build in-house" teams, consulting firms).

### C. Substitute Competitors
Future substitutes or emerging disruptive solutions (e.g., AI automations replacing manual processes).

---

## 📊 Competitor Analysis Matrix

| Competitor | Offering | Pricing Model | Unique Value Prop | Weaknesses | Customer Reviews |
|---|---|---|---|---|---|
| Competitor A | [Service/Product] | $X/mo | [Core benefit] | [Slow support, high churn] | G2, Capterra, G2 |
| Competitor B | [Service/Product] | $Y/mo | [Alternative benefit] | [Complex onboarding] | Site reviews |

---

## 🗺️ Positioning Quadrant Map

Plot competitors on a 2×2 grid:

- **X-axis**: Price (Low → High)
- **Y-axis**: Feature Depth (Basic → Comprehensive)

This reveals **price gaps** (white space) and **feature gaps** unaddressed by incumbents.

---

## 📋 Competitive Research Checklist

- [ ] Identify 5-10 direct and indirect competitors
- [ ] Audit competitor websites, pricing pages, and documentation
- [ ] Extract unique selling propositions (USPs) and claims
- [ ] Review customer feedback from G2, Capterra, Trustpilot, Reddit, LinkedIn
- [ ] Map feature matrix and price positioning
- [ ] Identify 3+ competitive differentiators you can exploit

---

## 🎯 Differentiation Framework

**Positioning Statement**: *For [target ICP] who struggles with [core pain], [your business] provides [core solution] unlike [competitors], because [unique differentiator].*

Example: *For SMB marketing teams who struggle with unpredictable ad spend, our agency provides ROI-guaranteed ad management unlike generic freelancers, because we tie fees to performance KPIs.*

---

## 📈 Competitive Monitoring Cadence

- **Weekly**: Social media and content releases
- **Monthly**: Pricing changes, feature launches, promotions
- **Quarterly**: Full re-audit of positioning and feature set

COMPETITOR_EOF
    echo "✅ Created 02_competitor_analysis.md"

# 03_ideal_customer_profiles.md
cat > "$BASE_DIR/01_strategy/03_ideal_customer_profiles.md" << 'ICP_EOF'
# 👥 3. Identify Ideal Customers

## Why ICPs Define Growth

Generic marketing wastes resources. Precise Ideal Customer Profiles (ICPs) enable targeted acquisition, higher conversion rates, and better product-market fit.

---

## 🧠 Buyer Persona Template

### Company Details
| Field | Details |
|---|---|
| **Company Name** | Example Inc. |
| **Size** | [Employees/Revenue Range] |
| **Industry** | [e.g., B2B SaaS, E-commerce] |
| **Geo Location** | [e.g., US West Coast] |
| **Stage** | [Startup, Scale-up, Enterprise] |

### Decision Maker
- **Job Title**: [e.g., VP of Marketing]
- **Goals**: [What they are measured on]
- **Pain Points**: [Daily frustrations]
- **Buying Triggers**: [Events causing them to seek solutions]

### Behavioral Signals
- **Tech Stack**: [CRM, Tools in Use]
- **Budget Range**: [Monthly/Annual range]
- **Decision Cycle**: [Days/Weeks]
- **Preferred Channel**: [Email, LinkedIn, Webinars]

---

## 🔍 ICP Development Framework

1. **Mine Data**: Analyze your 3-5 best customers.
2. **Pattern Recognition**: Extract common firmographics and psychographics.
3. **Pain Map**: List recurring pain points and buying triggers.
4. **Refine**: Score ICPs on fit and willingness-to-pay.

---

## 📋 ICP Identification Checklist

- [ ] Identify top 3-5 existing best customers
- [ ] Extract firmographics and technographics
- [ ] Map decision maker roles, goals, and pain points
- [ ] Define qualifying criteria (budget, authority, need, timeline - BANT)
- [ ] Create 2-3 core ICPs (primary, secondary, tertiary)
- [ ] Build ICP playbook for sales & marketing alignment

---

## 🎯 ICP Scoring Matrix

| Criteria | Weight | Customer A Score | Customer B Score |
|---|---|---|---|
| Fit with Offering | 30% | 5 | 3 |
| Willingness-to-Pay | 25% | 4 | 5 |
| Buying Authority | 20% | 5 | 3 |
| Pain Urgency | 25% | 5 | 4 |
| **Total** | 100% | **4.8** | **3.8** |

---

## 📣 Ideal Customer Profile Statement

**We serve** [Job Title] at [Company Size/Industry] **who struggle with** [Key Pain] **and value** [Desirable Outcome] **above all**.

Example: *We serve VP of Marketing at SaaS companies (50-200 employees) who struggle with low MQL-to-SQL conversion and value predictable pipeline above all.*

ICP_EOF
    echo "✅ Created 03_ideal_customer_profiles.md"

# 04_offer_design.md
cat > "$BASE_DIR/01_strategy/04_offer_design.md" << 'OFFER_EOF'
# 💡 4. Create My Offers

## Why Offer Design Determines Sales Velocity

A well-structured offer removes price objections and accelerates buying decisions by clearly demonstrating value, removing risks, and stacking benefits.

---

## 🏗️ The Grand Slam Offer Framework

### 1. Core Value Proposition
One simple, crystal-clear statement of the transformation delivered.
> **Template**: *In [Timeframe], achieve [Desirable Outcome] without [Common Pain], even if [Common Objection].*

### 2. Value Stack
List the core service/product plus additional bonuses, training, and support.

| Component | Perceived Value | Cost |
|---|---|---|
| Core Service | $5,000 | $2,000 |
| Bonus: Template Pack | $1,000 | $0 |
| Bonus: 1-on-1 Coaching Call | $500 | $0 |
| **Total Value** | **$6,500** | **$2,000** |

> **ROI Ratio** ≥ 2.5x perceived value vs. price.

### 3. Risk Reversal
Offer guarantees to remove buying risk.
- **Money-Back Guarantee** (e.g., 30-Day "No Questions" Refund)
- **Performance Guarantee** (e.g., Deliver X results or work free)
- **"Do or Die" Clause**: Specific KPI you will achieve.

### 4. Scarcity / Urgency
- **Limited Seats** (e.g., "Only 5 clients per quarter")
- **Application Process** (qualify buyers, increase perceived value)
- **Deadline Incentives** (bonus expires on date)

---

## 📋 Offer Design Checklist

- [ ] Define the single transformation outcome
- [ ] Stack bonuses to increase perceived value ≥2.5x price
- [ ] Choose a risk-reversal mechanism (guarantee)
- [ ] Build scarcity/urgency into the offer
- [ ] Test offer positioning on 3-5 prospects
- [ ] Document offer in sales proposal template

---

## 📄 Offer Statement Template

**Offer Name**: [e.g., The Growth Accelerator Program]

**Promise**: *In 90 days, increase qualified leads by 50% without increasing ad spend, even if you've tried agencies before.*

**Package**:
1. Core Service: 90-Day Execution Plan
2. Bonus 1: Custom Funnel Audit ($1,500 value)
3. Bonus 2: Weekly Strategy Calls ($2,000 value)

**Guarantee**: *Double your lead count in 90 days or we work free until you do.*

**Price**: $6,500 one-time
**Scarcity**: Limited to 3 clients per month, application only.

OFFER_EOF
    echo "✅ Created 04_offer_design.md"

# 05_pricing_strategy.md
cat > "$BASE_DIR/01_strategy/05_pricing_strategy.md" << 'PRICING_EOF'
# 💰 5. Set My Pricing

## Why Pricing Drives Profitability

Pricing must balance market expectations, perceived value, and sustainable margins. Pricing is not cost-plus; it's value-based.

---

## 🎯 Pricing Strategy Models

### 1. Value-Based Pricing
Price based on the value delivered to the customer, not your costs.
- **Customer ROI Calculation**: *Price = Customer's ROI × (0.10 - 0.30)*
- **Example**: If you deliver $50K in savings, charge $5K-$15K.

### 2. Tiered Package Pricing
Structure Good/Better/Best packages to guide customers upward.

| Package | Features | Price |
|---|---|---|
| **Starter** | Core deliverable, basic support | $1,500/mo |
| **Growth** | Core + advanced analytics, priority support | $3,500/mo |
| **Scale** | Everything + dedicated strategist | $7,500/mo |

### 3. Retainer vs. Project Pricing
- **Project**: Fixed fee for discrete deliverable.
- **Retainer**: Recurring monthly for ongoing service (preferred for predictability).

### 4. Performance-Based Pricing
Tie a portion of fees to KPIs achieved (e.g., lead count, revenue).

---

## 🧮 Pricing Calculator

| Component | Calculation |
|---|---|
| **Desired Monthly Revenue** | $20,000 |
| **Target Hours/Month** | 80 hours |
| **Min Hourly Rate** | $250 |
| **Price Floor** | $250/hr |
| **Market Benchmark** | $200-$400/hr |
| **Adjusted Price** | $300/hr or Package |

---

## 📋 Pricing Strategy Checklist

- [ ] Validate willingness-to-pay via prospect interviews
- [ ] Benchmark competitor pricing
- [ ] Define pricing floors based on costs + margins
- [ ] Build tiered package architecture
- [ ] Create pricing page with value anchoring
- [ ] Test price sensitivity via pilot offers

---

## 💡 Pricing Psychology Tactics

- **Anchoring**: Show "Standard" first, make Premium look reasonable.
- **Decoy Effect**: Add a mid-tier to push customers to preferred tier.
- **Price Rounding**: Use $9,997 instead of $10,000 to feel more tangible.
- **Monthly vs. Annual**: Offer "Save 20% with annual prepay" for cash flow.

---

## 📄 Pricing Statement Template

**Our Service Packages**:
- **Starter**: For small teams exploring [solution]. $1,500/mo.
- **Growth**: For scaling companies needing [solution] + [advanced feature]. $3,500/mo.
- **Scale**: For enterprises requiring full-service partnership. Custom pricing.

**Guarantee**: Satisfaction guarantee, cancel anytime.

PRICING_EOF
    echo "✅ Created 05_pricing_strategy.md"

echo ""
echo "🎉 Business Starter Kit installed successfully!"
echo ""
echo "📂 Location: C:\Code\Main Project\Building App"
echo "📖 Open README.md for the master task checklist."
echo "🛠️ Run: code . to start working in the kit."