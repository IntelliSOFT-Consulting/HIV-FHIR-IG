### Revision History

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Reason For Changes</th>
            <th>Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>IntelliSOFT Consulting Limited</td>
            <td>9th April 2024</td>
            <td>Initial Draft</td>
            <td>1.0</td>
        </tr>
        <tr>
            <td>IntelliSOFT Consulting Limited</td>
            <td></td>
            <td></td>
            <td>1.1</td>
        </tr>
    </tbody>
</table>

### Acronyms and Abbreviations

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Number</th>
            <th>Acronym</th>
            <th>Meaning</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>DAK</td>
            <td>Digital Adaptation Kit</td>
        </tr>
        <tr>
            <td>2</td>
            <td>SMART</td>
            <td>Specific, Measurable, Achievable, Relevant, and Time-bound</td>
        </tr>
        <tr>
            <td>3</td>
            <td>WHO</td>
            <td>World Health Organization</td>
        </tr>
        <tr>
            <td>4</td>
            <td>HIV</td>
            <td>Human Immunodeficiency Virus</td>
        </tr>
    </tbody>
</table>

### Notation Guidance

Within this HIV DAK identification (ID) numbers simplify tracking and referencing of each of the components. Note that this DAK represents an overview across the different components, while the comprehensive and complete outputs of each component (that is, data dictionary, and decision-support tables) are included in appended spreadsheets.

The notation guidance is as follows:

-   **Component 1: Health interventions and associated recommendations**
    -   No notations used
-   **Component 2: Generic personas**
    -   No notations used
-   **Component 3: User scenarios**
    -   No notations used
-   **Component 4: Business processes and workflows**
    -   Each workflow has a “Process name” and a corresponding “Process ID”, for example, “HIV.A”.
    -   Each activity in the workflow has an “Activity ID” following the process name and process ID letter – thus, for example, “HIV.A7”.
-   **Component 5: Core data elements (data dictionary)**
    -   Each data element has a running number and a “Data Element (DE) ID” that is structured as follows: “Abbreviated health domain” (that is, HIV) and a Sequential number of the data element – thus, for example, “HIV.A7.DE.1”, “HIV.A7.DE.2”.
-   **Component 6: Decision-support logic**
    -   Each decision-support logic table has a running number and a “Decision-support table (DT) ID” that is structured as follows: “Abbreviated health domain” (that is, HIV).”DT and Sequential number of the decision-support table” – thus, for example, “HIV.DT.01”.
-   **Component 7: Indicators and performance metrics**
    -   Each indicator has an “Indicator ID” that is structured as follows: “Abbreviated health domain” (that is, HIV).”IND.“ and Sequential or reference number of the indicator” – thus, for example, “HIV.IND.PR.1”.
-   **Component 8: High-level system requirements**
    -   Each functional requirement has a “Functional requirement ID” structured as follows: “Abbreviated health domain” (that is, HIV).”FXN.REQ” and a “Sequential number of the functional requirement” – thus, for example, “HIV.FXN.REQ.1”.
    -   Each non-functional requirement has a “Non-functional requirement ID” that is structured as follows: “Abbreviated health domain” (that is, HIV). ”NFXNREQ and a Sequential number of non-functional requirement” – thus, for example, “HIV.NFXNREQ.001”.

### Introduction to Digital Adaptation Kits (DAKs)

Digital Adaptation Kits (DAKs) are part of the SMART guidelines initiative and include data and health content consistent with clinical recommendations, generically applicable to digital systems. DAKs are software-neutral, operational, and structured documentation based on clinical, health system and data use recommendations to systematically and transparently inform the design of digital systems.

Components of this DAK will include:

1. Linked health interventions and recommendations
2. Personas
3. User scenarios
4. Business processes and workflows
5. Core data elements mapped to standard terminology codes
6. Decision support
7. Program indicators
8. Functional and non-functional requirements.

### Purpose

This document has been developed as part of the CDC-TAP project as part of the year 4 scope of work. It is intended to document four priority Monitoring, Evaluation and Reporting (MER) Indicators whose selection is based on the rationale outlined in the Indicator selection rationale document. The indicators in scope include TX_Curr, TX_New, TX_RTT, and TX_PVLS. This project is aimed at standardizing the indicator generation approach using the SMART guidelines approach. It will compare the process and results of computing the indicators through the SMART guidelines approach and through the approach used in KenyaEMR currently. Through this, differences in the WHO HIV SMART guidelines and in the Kenyan adaptation will be highlighted.

This project is led by IntelliSOFT Consulting Limited and Palladium Kenya working closely with PATH and other CDC TAP consortium partners.

### Document Conventions

This document follows the SMART guidelines Digital Adaptation Kit format and covers all eight DAK components.

### Health Interventions & Recommendations

#### Interventions referenced in this DAK

Interventions referenced in this digital adaptation kit are based on Kenya’s universal health coverage list of essential interventions as adapted from the WHO definition. The interventions covered include:

-   health promotion and prevention of HIV
-   diagnosis of HIV
-   treatment of HIV

#### HIV guidelines, recommendations and guidance

The health content and interventions for this DAK are based on the following WHO documents.

1. [Key considerations for differentiated antiretroviral therapy delivery for specific populations: children, adolescents, pregnant and breastfeeding women and key populations (2017)](https://apps.who.int/iris/handle/10665/258506)
2. [Consolidated guidelines on HIV prevention, testing, treatment, service delivery and monitoring: recommendations for a public health approach (2021)](https://www.who.int/publications-detail-redirect/9789240031593)
3. [Kenya HIV Prevention and Treatment Guidelines, 2022.](https://www.differentiatedservicedelivery.org/wp-content/uploads/Kenya-ARV-Guidelines-2022-Final-1.pdf)
4. [PEPFAR Fiscal Year 2023 Monitoring, Evaluation, and Reporting (MER) Indicators](https://www.state.gov/wp-content/uploads/2023/02/FY23-MER-2.6.1-Indicator-Reference-Guide.pdf)
