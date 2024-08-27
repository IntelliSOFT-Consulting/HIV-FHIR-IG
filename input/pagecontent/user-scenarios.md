User scenarios are stories that explain how different personas might interact with each other and provide an illustrative idea of a typical workflow. This section aims to clarify how different personas identified in section 2 would fit into the existing workflows.

### Scenario 1: A user scenario for new Client enrollment (TX-NEW)

<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Client</i></span>: Ann
                    </li>
                    <li>
                        <span><i>Health Record Information Officer (HRIO)</i></span>: Francis
                    </li>
                    <li>
                        <span><i>Clinician</i></span>: Julie
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            Ann, a 29-year-old lady, has been feeling unwell for the past week. Ann realized she had missed her menstrual period for one month and was curious to know whether she might be pregnant. Ann does a self-pregnancy test and finds out she is pregnant. Ann decides to visit TumuTumu hospital for further assessment and also to start the antenatal clinic journey.<br>
At the hospital, Ann finds Julie(clinician), who takes her history and recommends a repeat pregnancy test for confirmation. Ann goes to the lab and finds Miano(Lab technologist) who does a pregnancy test which turns out to be positive. Ann proceeds back to the consultation room and finds  Julie. Julie accesses Ann’s results from the EMR system. Julie congratulates Ann and opens an antenatal form for her.<br>
As part of the routine tests, Ann is informed that part of the tests that need to be done include HIV test. Ann gives consent for HIV test. Julie directs Ann to the HTS provider who counsels her and proceeds to do the test. The test turns out to be positive. Post-counselling is done and she is advised on linkage to care and treatment. Ann agrees to receive care and treatment from the same facility. Ann is directed back to Julie who stresses to her the need to start treatment immediately and attend all antenatal visits to prevent mother-to-child transmission. Ann agrees with her and admits she is ready to start the treatment immediately.
Julie links Ann to Francis (HRIO) for ART enrollment. Francis registers Ann in the ART system and gives her a unique identifier number. He enrolls her in the ART clinic where she will be receiving treatment services.<br>
When generating TX-NEW for January 2024, Ann was part of the report as she was enrolled irregardless of her pregnancy status.
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>Client enrollment</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>

### Scenario 2: A user scenario for new client Enrollment (TX-NEW)

<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Client</i></span>: Peter
                    </li>
                    <li>
                        <span><i>HTS provider</i></span>: Patricia
                    </li>
                    <li>
                        <span><i>Clinician</i></span>: Lynette
                    </li>
                    <li>
                        <span><i>HRIO</i></span>: Francis
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            Peter a 59-year-old man widower has been unwell for the past month and has been receiving treatment from different health centres since December 2023. Peter visits TumuTumu hospital in February 2024 and after registration, Peter is directed to the consultation room where he finds Lynette (Clinician). Peter explains to Lynette how his health journey has been deteriorating over time. Lynette captures important medical history and does a physical examination. Lynette finds out Peter is pale, hypotensive, and lethargic. She orders for complete blood count test which shows marked thrombocytopenia and normocytic normochromic anemia. Lynette asks Peter what his HIV status is as a screening criteria for chronic illnesses and Peter admits he is not sure for it has been almost 10 years since he was tested. Lynette recommends to Peter an HIV test would be necessary at that particular time to rule out possible differential diagnosis. Peter agrees and gives consent for HIV test. Lynette links Peter to Patricia  (HTS provider) who does pre-test counseling and proceeds to do the test. The test turns out to be positive. A repeat test is done and turns positive too. Peter is devastated but Patricia(HTS provider) manages to calm him down. Post-test counseling is done and Peter is linked to the ART clinic for treatment services. Francis (HRIO), registers Peter in the ART system and assigns him a unique patient identifier number. Peter is directed back to Lynette who advises him that he will need to be admitted for close monitoring as he starts on the antiretroviral treatment and further management for underlying conditions.
When generating the TX-NEW report for February 2024, Peter was part of the report as he was newly enrolled.
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>Client enrollment</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>

### Scenario 3: User scenario for a client with no clinical contact since their last expected contact (TX-ML)

<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Client</i></span>: Peter
                    </li>
                    <li>
                        <span><i>HRIO</i></span>: Francis
                    </li>
                    <li>
                        <span><i>Peer educator/Social worker/ CHP</i></span>
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            Peter was enrolled in the ART clinic at TumuTumu hospital in February 2024. Peter was admitted to the hospital due to coinfections and was being closely monitored. On discharge day, Peter booked an appointment for ART clinic in March 2024. Francis (HRIO), sent reminders to all the clients who were due for follow-up.  However, Peter did not show up for the clinic on the expected date. A month lapsed without visiting the clinic and the tracing process by a social- worker was started.<br><br>

While generating the TX-ML report for March 2024, Peter will be part of the report as he has not shown any clinical contact since their last expected contact.
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                <li>(See component 4)</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>

### Scenario 4: User scenario for clients with suppressed viral load (TX-PVLS)

<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Client</i></span>: Kevin
                    </li>
                    <li>
                        <span><i>Clinician</i></span>: Julie
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
After a series of two sessions of enhanced adherence counseling, Kevin has been compliant with the medications and has honored follow-up appointments when due. During his appointment session in January 2024, the viral load was 1000 copies/ml. Julie discussed the results with Kevin and stressed the need for compliance to suppress the viral load. Kevin reports that he has been taking the medication as advised and he has never missed a dose. Julie recommends that he continue taking the medication and will be reviewed after two months for a repeat viral load test.<br><br>
Kevin visits the clinic two months later as previously advised and on reviewing the viral load test with the clinician, the viral load is 800 copies/ml.<br><br>
Julie informs Kevin that is good progress and the main goal is to reach undetectable levels. Julie advises Kevin to continue being adherent to medications and to honor follow-up sessions.
Throughout the year, Kevin has been compliant with his medications and visits the clinic every two months. The viral load has ranged between 700-800c/ml during review sessions.<br><br>
While generating TX-PVLS for June 2024, Kevin will be part of the report as his viral load has been below 1000c/ml over the last three months.
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>(See component 4)</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>

### Scenario 5: User scenario for HIV Testing services (HTS-TST)

<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Client</i></span>: Abdu
                    </li>
                    <li>
                        <span><i>Clinician</i></span>: Julie
                    </li>
                    <li>
                        <span><i>HRIO</i></span>: Sam
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            Abdu, a 30-year-old man, did a self-test at home and got a HIV-positive result.  Abdu opts to visit TumuTumu Hospital, where he is directed to the HIV testing services.  Abdu meets Clara, who provides counseling and proceeds to carry out a rapid HIV test to help determine his HIV Status.  The results come back as HIV positive, and the retesting result is also positive. Abdu is devastated by the results; however,  Clara manages to calm him down and link him to the ART clinic for adherence counseling, index testing services, and ART enrollment.<br><br>
 Abdu meets Sam (HRIO) who registers him by capturing his basic demographic information including age, administrative area, occupation, and marital status. Upon capturing the initial information,   Sam assigns  Abdu to the clinician pool for an initial consultation.<br><br>
At the consultation,  Abdu meets Julie(Clinician), who retrieves Abdu’s record on the ART e-Register and begins the consultation process, captures  Abdu’s social and family history, and screens for TB and other opportunistic infections like cryptococcal meningitis, Varicella zoster and Pneumocystis Jirovecii pneumonia. There are symptoms for the illnesses screened. Julie finishes the consultation by providing some additional counseling to Julie on how to manage his condition and lifestyle, he then prescribes and initiates  Abdu on ART for six months.  He then sets the next appointment date and sends him to the pharmacy with his file.<br><br>
After picking ARVs, Abdu is directed to Sam (HRIO) who updates the ART registers issues clients hand-held cards, and updates the appointment date. Abdu exits the facility.<br><br>
While generating the HTS-TST report, Abdu will be part of the report as he was among the individuals who received HIV testing and received the results.
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>(See component 4)</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>
