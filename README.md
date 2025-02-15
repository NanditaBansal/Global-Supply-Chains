# Global-Supply-Chains and Productivity – Gross Exports, DVA, and Employment**  

#### Overview**  
This study builds on existing research to analyze India's participation in Global Value Chains (GVCs) and its impact on gross exports, domestic value-added (DVA), and employment. Using updated data from the OECD TiVA database (2000–2020), we extend the empirical framework of Veeramani and Dhir (2022) to test whether increased GVC integration enhances India's trade and labor market outcomes.  

#### **Empirical Strategy**  
We use an industry-level panel dataset covering 66 industries across manufacturing, services, and agriculture in India. The study employs the following regression models:  

1. **Gross Exports Model**  
   - **Dependent Variable**: Log of Gross Exports (ln_exgr)  
   - **Key Explanatory Variables**:  
     - Foreign Value-Added Ratio (ln_fvax_ratio) – captures backward GVC participation.  
     - Domestic Activity (ln_dom_act) – controls for industry-level economic contribution.  
     - Relative Price Competitiveness (ln_rel_price) – compares price levels with the U.S.  

2. **Domestic Value-Added Model**  
   - **Dependent Variable**: Log of Direct Domestic Value Added (ln_DVA)  
   - **Key Explanatory Variables**:  
     - Gross Exports (ln_exgr) – measures export-driven domestic value creation.  
     - Gross Value Added (ln_gvad) – accounts for total sectoral output.  

3. **Employment Model**  
   - **Dependent Variable**: Log of Employment (ln_Emp)  
   - **Key Explanatory Variables**:  
     - Direct Domestic Value Added (ln_DVA) – assesses value-added employment effects.  
     - Labor Intensity (ln_lab_int) – measures labor-capital ratio in production.  

#### **Data & Limitations**  
- Data is sourced primarily from the OECD TiVA database (2000–2020).  
- Employment data is available only up to 2018.  
- Wage Rate Index (WRI) data was limited to four years (indexed to 2016).  
- Industry-specific GDP deflators were unavailable, so we used a proxy deflator approach.  

#### **Key Findings**  
1. **Gross Exports & GVCs**  
   - Higher GVC participation (ln_fvax_ratio) significantly increases exports (coefficient: 0.4856, p < 0.0001).  
   - Domestic activity (ln_dom_act) negatively impacts exports (coefficient: -2.0436, p < 0.0001), possibly due to inefficiencies.  

2. **Domestic Value Added**  
   - Gross exports positively influence domestic value-added (coefficient: 0.9432, p < 0.0001).  
   - Gross value-added negatively affects direct DVA, indicating structural constraints (coefficient: -0.1323, p = 0.002).  

3. **Employment**  
   - Direct DVA has an insignificant effect on employment (coefficient: -0.0002, p = 0.914).  
   - Labor-intensive industries show significant job creation potential (coefficient: 0.7921, p < 0.0001).  

#### **Methodology**  
- **Regression Technique**: Ordinary Least Squares (OLS) with robust standard errors.  
- **Fixed Effects**: Sector and year fixed effects control for unobserved heterogeneity.  
- **Software**: Stata (Code and dataset available in `dva_gvad_data.py`).  

#### **Future Research Directions**  
- Extending employment data beyond 2018.  
- Refining industry-level price competitiveness measures.  
- Evaluating sectoral policies that enhance domestic value retention.  

