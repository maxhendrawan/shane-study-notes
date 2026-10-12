# PIA3121 Theories of International Relations — Week 1 Summary: Tools of Analysis / Foundational Concepts

## 1. Course Aims and the "Root Discourses" of IR
**Keywords:** root discourses, discipline of IR, concepts as tools, real-life problems, theory applied to practice

### 1.1 Two Objectives (Slides 2–3)
**Keywords:** introduce the discipline, illuminate real problems, theory–practice link

- **Objective 1:** introduce the {{D:"root discourses" of International Relations — the foundational theoretical traditions that make up IR as an academic discipline}} (Slide 2).
- **Objective 2:** use **concepts developed by contributors to the root discourses** to **illuminate real-life problems and issues facing the world today** (Slide 3).
- → Theory is treated as a **toolkit**, not an end in itself: every concept learned should be usable on a current case.
- One-liner: *learn the traditions, then use their concepts as lenses on today's world.*

### 1.2 The Nine Root Discourses (Slide 4) (memorise)
**Keywords:** realism, liberalism, neo-neo debate, structuralism, English School, constructivism, ontological security, critical theory, gender

- {{T:Realism}}
- {{T:Liberalism}}
- {{T:Neorealism}} and {{T:Neoliberalism}}
- {{T:Economic Structuralism}}
- {{T:The English School}}
- {{T:Constructivism}}
- **Psychology and** {{T:Ontological Security}}
- {{T:Critical Theory}}
- **Gender and IR** ({{T:Feminist IR}})
- → These nine traditions are the "menu" of the semester; each later week develops one of them (see Section 2.2).

### 1.3 Real-Life Global Problems the Theories Should Illuminate (Slide 5)
**Keywords:** power transition, liberal order, existential risk, political economy, inequality, conflict, global governance

Six problem clusters the course returns to:

- **Systemic adjustment to the rises of China and India** — fate of the **liberal international order**; democracy and democratisation.
- **Demography, natural resources, climate change, pandemics, existential risks.**
- **Challenges to the world political economy**; technology and global communication; **AI**.
- **Women and gender (in)equality**; other forms of (in)equality; ethnic relations; religion in IR.
- **Regional inter-state tensions**; wars; civil wars; terrorism; revolution.
- **Ethics and values in a multicultural world**; global governance.

## 2. Course Logistics: Texts, Schedule, Readings, Assessment
**Keywords:** Viotti & Kauppi, Oxford Handbook, schedule, midterm quiz, group paper, assessment tasks

### 2.1 Required and Recommended Books (Slide 6)
**Keywords:** core textbook, handbook, reference texts

- {{A:Viotti & Kauppi}}, *International Relations Theory* (6th ed.) — core textbook; Week 1 reading is its chapter "Thinking About IR Theory".
- {{A:Reus-Smit & Snidal}} (eds.), *The Oxford Handbook of International Relations* — source of several assigned chapters.

### 2.2 Schedule (Slide 7)
**Keywords:** weekly topics, midterm 13 Oct, final quiz, group paper 8 Dec

- **1 Sept** Tools of Analysis / Foundational Concepts
- **8 Sept** Realism
- **15 Sept** Liberalism
- **22 Sept** Neorealism and Neoliberalism
- **29 Sept** Economic Structuralism and Globalization
- **6 Oct** Constructivism
- **13 Oct — MIDTERM QUIZ** (covers Weeks 1–6)
- **20 Oct** Ontological Security Theory
- **27 Oct** The English School
- **3 Nov** Democratization / Global Culture / Revolution
- **10 Nov** Critical Theory / Gender in IR / Global Civil Society
- **17 Nov** Chaos and Complexity in IR / Existential Risks
- **24 Nov** FINAL QUIZ DUE / Discussion of Group Projects
- **8 Dec — GROUP PAPER PROJECT DUE**
- → Midterm = mainstream canon (realism → constructivism); second half = newer and critical traditions.

### 2.3 Reading for 8 September — Realism (Slide 8)
**Keywords:** realism, the state, balance of power, Lake, Wohlforth

- {{A:Viotti & Kauppi}}, "Realism: The State and Balance of Power," pp. 21–62.
- {{A:Lake}}, "The State and International Relations," in Reus-Smit and Snidal (eds.), pp. 41–61.
- {{A:Wohlforth}}, "Realism," in Reus-Smit and Snidal (eds.), pp. 131–149.

### 2.4 Assessment (Slide 9)
**Keywords:** assessment tasks (ATs), CILOs, final grade

- Final grade is built from **Assessment Tasks/Activities (ATs)**, which are {{D:designed to assess how well students achieve the CILOs (Course Intended Learning Outcomes)}} (Slide 9).

## 3. Tools of Analysis I: Computational Text Analysis
**Keywords:** R, RStudio, text mining, structural topic model, STM, People's Daily, Zhihu, AI as assistant

### 3.1 Software Setup (Slides 10, 22)
**Keywords:** R, RStudio, posit.co

- Go to posit.co → install **R** → install **RStudio** (Slides 10, 22). Course tool, not exam content.

### 3.2 Instructor Demo: "National Rejuvenation" in Chinese Discourse (Slides 11–16)
**Keywords:** minzu fuxing, People's Daily, Zhihu, topic composition, Mapper network, data as evidence

- **Slide 11:** count of *People's Daily* articles mentioning **"National Rejuvenation" (民族复兴, minzu fuxing)** — near **zero before 2000**, rising to roughly **2,500 per year by 2021–23**.
- **Slides 12–13:** **topic-composition charts** comparing *People's Daily* (state party newspaper) with **Zhihu** (Chinese Q&A social platform), 2012–2025.
- **Slides 14–15:** topic mass for **"rejuvenation + future"** in each source.
- **Slide 16:** **Mapper network** of topics — People's Daily = yellow, Zhihu = purple.
- → **Point of the demo:** large-scale text mining is a **tool of analysis** for IR — it turns discourse (e.g. national identity narratives) into measurable data.

### 3.3 Building a Structural Topic Model with AI Help (Slides 17–20)
**Keywords:** STM, stm package, quanteda, pdftools, corpus, DFM, K topics

- {{D:Structural Topic Model (STM): a statistical method that discovers latent topics in a large set of texts and lets topic prevalence vary with document metadata (e.g. news source, date)}} — run via the R stm package.
- AI acts as a guide through **five phases** (Slide 18):
  - **Setup and installation** — install/load packages (stm, quanteda, pdftools).
  - **Text extraction** — script to read e.g. **500 PDFs** from a folder and convert them to text.
  - **Data cleaning and pre-processing** — build the **corpus**, tokenize, remove stopwords and punctuation, produce the **document-feature matrix (DFM)**.
  - **Model fitting** — run stm(), explaining key parameters such as **K (number of topics)**.
  - **Analysis and visualisation** — topic word clouds; plotting how **topic prevalence correlates with metadata** (e.g. news source).
- Key terms:
  - {{D:Corpus: the structured collection of all texts being analysed}}.
  - {{D:Document-feature matrix (DFM): a "spreadsheet" with one row per document and one column per word (feature), recording word counts — the input format stm needs}} (Slides 19–20).
- Example interaction (Slides 19–20): texts extracted with pdftools → **quanteda** builds corpus and DFM, removing punctuation, **stopwords** and numbers and **stemming** words (*"running" → "run"*).

### 3.4 The Student as Research Director (Slide 21)
**Keywords:** technical assistant, not intellectual replacement, critical thinking, K choice, interpretation

- AI can write all the code, but its role is **technical assistant, not intellectual replacement**; the student is the **research director**.
- Tasks only the student can do (memorise the list):
  1. **Define the research question.**
  2. **Select and justify the text corpus.**
  3. **Make crucial modelling decisions** — e.g. choosing **K**.
  4. **Interpret and label the topics** from their content.
  5. **Perform the final nuanced analysis** linking model output back to **IR theories** from class.
- → AI is "the exact kind of productivity-enhancing tool" students will meet in their careers; the assignment trains critical analysis, with the student "doing the driving".
- One-liner: *AI writes the code; you supply the question, the judgement and the theory.*

## 4. Why You Need Theory: Signal vs. Noise (Slides 23–28)
**Keywords:** signal-to-noise, hot-take economy, events as symptoms, unconscious theory, cognitive supremacy

Five build-up claims (Slides 24–28) for why theory is necessary:

### 4.1 Drowning in Data, Starving for Insight (Slide 24)
**Keywords:** pundits, algorithms, state narratives, information overload

- Daily bombardment by **pundits, algorithms, and state-sponsored narratives**; the **noise-to-signal ratio** is overwhelming.
- {{D:Signal: information that reveals a real, underlying change or force; noise: the mass of irrelevant, emotional or misleading information surrounding it}}.

### 4.2 The "Hot Take" Economy Will Fail You (Slide 25)
**Keywords:** immediacy, emotion, surface analysis, what vs why

- Surface news analysis prioritises **immediacy and emotion over structural understanding**.
- It tells you **what** happened, rarely **why**.

### 4.3 Events Are Symptoms, Not the Disease (Slide 26)
**Keywords:** underlying forces, structural causes, crisis-chasing

- *Example:* why are **semiconductor supply chains** the new frontline?
- *Example:* why is the **South China Sea militarised**?
- Focusing only on the latest crisis **blinds you to the underlying forces** driving it.
- → Theory directs attention from the event to the **cause**.

### 4.4 Everyone Uses Theory (Slide 27)
**Keywords:** pragmatism, implicit theory, conscious and rigorous theory

- Being "**pragmatic**" often just means using an **unconscious, outdated theory**.
- The course aims to make those theories **conscious, rigorous, and powerful**.
- Standard context: a theory is a simplified set of assumptions and propositions that explains and helps predict patterns — no observer can avoid using one, only choose whether to examine it ({{A:Viotti & Kauppi}}, "Thinking About IR Theory").

### 4.5 The Goal: Cognitive Supremacy (Slide 28)
**Keywords:** cut through noise, signals of change, independent understanding

- {{D:Cognitive supremacy: the ability to cut through the noise, identify the actual signals of change, and achieve an independent understanding of the world}} (memorise).
- One-liner: *theory is a filter — it separates signal from noise and explains why, not just what.*

## 5. The Algorithmic Society (Slides 29–32)
**Keywords:** algorithms, coding elite, code as law, data doubles, algorithmic dominion, autonomy, democratic governance

### 5.1 Algorithms Reorganise Institutions (Slide 29)
**Keywords:** algorithm, social institutions, computational power

- {{D:Algorithms: sets of instructions written as code and run on computers}}.
- The reorganisation of **social institutions** is increasingly **driven by algorithms**.

### 5.2 The Coding Elite (Slide 29)
**Keywords:** concentrated power, digital means of production, ownership

- A new {{D:"coding elite" — a group that has consolidated immense cultural, political and economic power through mastery of computational techniques and ownership claims over the digital means of production}}.

### 5.3 Code as Law (Slide 30)
**Keywords:** machine-readable world, automatic enforcement, exclusion, allocation

- Computer code **functions as a form of law**:
  - it **translates the world into machine-readable entities**;
  - it **automatically enforces rules, exclusions, and resource allocations**.

### 5.4 Data Doubles and Algorithmic Dominion (Slide 31)
**Keywords:** behavioural trace data, surveillance, autonomy, democracy

- **Algorithmic classifiers** continually extract **behavioural trace data** to build {{D:"data doubles" — surveillant digital profiles of individuals constructed from their behavioural traces}}.
- Individuals **cannot shape the terms** of this algorithmic dominion or evade **the rule of the code** → profound questions for **human autonomy** and **democratic governance**.

### 5.5 Infographic Summary (Slide 32)
**Keywords:** algorithmic governance, coding elite, new social divisions, filtered sociality

- Four linked themes: **algorithmic governance**; the **coding elite**; **new social divisions**; **filtered sociality** (social life mediated and filtered by algorithms).

## 6. Cultivating "Cognitive Supremacy" in the Age of AI (Slides 33–37)
**Keywords:** geopolitical literacy, AI-proof skills, higher-order cognition, anticipation, uncertainty

Four build-up claims for why IR theory matters for careers:

### 6.1 Geopolitical Literacy Is Your Competitive Advantage (Slide 34)
**Keywords:** international risk, opportunity, core competency

- Whether in government IR analysis, business, tech, law or journalism, the ability to **assess international risk and opportunity** is now a **core competency**.

### 6.2 The "AI-Proof" Skillset (Slide 35)
**Keywords:** automation, critical thinking, strategic thinking

- As **AI automates routine analysis**, the highest value goes to **deep, critical, and strategic thinking**.
- IR theory cultivates this **higher-order cognition**.

### 6.3 Anticipating the Next Move (Slide 36)
**Keywords:** see around corners, explanation, prediction

- The course trains you to "**see around corners**": others focus on **what** is happening; you understand **why** and **what is likely to happen next**.

### 6.4 Navigating Uncertainty with Confidence (Slide 37)
**Keywords:** frameworks, ambiguity, risk assessment, volatility

- No crystal ball — but **frameworks** to **analyse ambiguity, assess risk, and make informed decisions** in a volatile world.

## 7. Levels of Analysis and Anarchy (Slides 38–41)
**Keywords:** levels of analysis, individual, state, international system, anarchy, Earth from space, nations of the world

### 7.1 Framing Images (Slides 38–39)
**Keywords:** planetary view, world political map, units of IR

- **Slide 38:** Earth from space — one planet, no borders visible.
- **Slide 39:** world political map, "the nations of the world" — the same planet divided into sovereign states.
- → The contrast sets up IR's core puzzle: a single interdependent planet governed by many separate states with no authority above them.

### 7.2 The Levels-of-Analysis Diagram (Slide 40) (memorise)
**Keywords:** concentric circles, individual, state, international system

- {{T:Levels of Analysis}}: {{D:the framework that sorts explanations of international events by where the cause is located — the individual, the state, or the international system}}.
- Drawn as **concentric circles**, each level nested in the next:
  - **Individual** (innermost): **personality, perceptions, activities, choices** of leaders and people.
  - **State**: **government, economy, interest groups, national interest**.
  - **International system** (outermost): **alliances, international norms/rules, IGOs, multinational corporations**.
- *Example:* explaining a war — a leader's misperception (individual), domestic interest-group pressure (state), or a shifting balance of power (system).
- Standard context: the scheme descends from {{A:Waltz 1959}}'s "three images" (man, state, war) and {{A:Singer 1961}}'s "level-of-analysis problem"; {{A:Viotti & Kauppi}} use it to compare how theories locate causes.
- → Different theories favour different levels: system-level structure for {{T:Neorealism}}; state/domestic factors for many liberal accounts; perceptions and identity for psychological approaches.

### 7.3 ANARCHY! (Slide 41)
**Keywords:** anarchy, no world government, system level, self-help

- Slide 41 stamps "**ANARCHY!**" on the **international-system** level.
- {{T:Anarchy}}: {{D:the absence of any central authority or world government above sovereign states}} (memorise).
- Anarchy ≠ chaos: it means **no higher authority to enforce rules or guarantee security**, so states must rely on themselves.
- → Anarchy is the **defining condition of the international system** and the starting assumption of realism (Week 2) and neorealism (Week 4).
- One-liner: *inside states there is government; between states there is anarchy.*

## 8. Consequences of Anarchy: Security Dilemma and Nuclear Weapons (Slides 42–44)
**Keywords:** security dilemma, spiral, mistrust, defensive vs offensive, nuclear tests, warhead inventories

### 8.1 The Security Dilemma Spiral (Slide 42) (memorise)
**Keywords:** spiral model, mistrust, misinterpretation, arms race

- {{T:Security Dilemma}}: {{D:the situation in which one state's efforts to increase its own security (e.g. arming for defence) reduce the security of others, who respond in kind, leaving all less secure}}.
- The four-step **spiral** (Slide 42):
  1. **A distrusts B** and **acquires power for defence**.
  2. **B interprets A's action as offensive**.
  3. **B acquires power for its own defence**.
  4. **A interprets B's action as confirming** its initial basis for mistrust → **repeat**.
- *Example:* an arms race — each side's "defensive" build-up is read by the other as a threat.
- Standard context: concept associated with {{A:Herz 1950}} and developed by {{A:Jervis 1978}}.
- → The dilemma arises **because of anarchy** (Section 7.3): with no authority to guarantee intentions, defensive moves cannot be distinguished from offensive ones.
- One-liner: *defensive arming + uncertainty about intentions = spiral of insecurity.*

### 8.2 Nuclear Explosions since 1945 (Slide 43)
**Keywords:** nuclear testing, nuclear powers, superpower dominance

- Map of nuclear tests by **US, USSR, UK, France, China, India, Pakistan, North Korea**.
- **Most tests by the US and USSR** — the Cold War superpower rivalry as a security-dilemma spiral in action.

### 8.3 Global Nuclear Warhead Inventories, 2026 (Slide 44)
**Keywords:** FAS estimates, nine nuclear states, stockpile growth

- Source: Federation of American Scientists (FAS), estimated inventories 2026:
  - **Russia ~4,400**; **US ~3,700**; **China ~620**; **France 290**; **UK ~225**; **India ~190**; **Pakistan ~170**; **Israel ~90**; **North Korea ~60**.
- **Nine nuclear-armed states**; **Russia + US hold the vast majority**.
- Stockpiles **increasing** for **China, India, North Korea, Pakistan, Russia, UK**.

## 9. The Five Sectors: Lenses for Analysis (Slides 45–50)
**Keywords:** sectors, military, political, economic, socio-cultural, environmental, analytical lenses

- {{T:Sectoral Analysis}}: {{D:dividing the international system into sectors — each a lens that highlights one type of relationship among actors}} (Slide 45).
- Standard context: the five-sector scheme follows {{A:Buzan, Wæver & de Wilde 1998}} and {{A:Buzan & Little 2000}}.

### 9.1 The Five Sectors (Slides 46–50) (memorise the definitions)
**Keywords:** coercion, authority, trade, identity, biosphere

- **1. Military** (Slide 46): {{D:relationships of forceful coercion, and the ability of actors to fight wars with each other}}.
  - *Example:* alliance build-ups and arms races (Section 8).
- **2. Political** (Slide 47): {{D:relationships of authority, governing status, and recognition}}.
  - *Example:* disputes over recognition of a state's sovereignty.
- **3. Economic** (Slide 48): {{D:relationships of trade, production, and finance}}.
  - *Example:* semiconductor supply chains (Slide 26).
- **4. Socio-cultural** (Slide 49): {{D:collective identity; the transmission of ideas}}.
  - *Example:* the "national rejuvenation" narrative (Slides 11–16).
- **5. Environmental** (Slide 50): {{D:the relationship between human activity and the planetary biosphere which sustains it (or not)}}.
  - *Example:* climate change and pandemics (Slide 5).

## 10. Doing Sectoral Analysis (Slides 51–54)
**Keywords:** type of unit, type of interaction, structure, partial vs total reality

### 10.1 Three Questions for Any Sector (Slides 51–53) (memorise)
**Keywords:** units, interactions, structure

- **Type of unit** — who acts? (**states? corporations? NGOs?**) (Slide 51)
- **Type of interaction** — how do they relate? (**warfare? trade? persuasion?**) (Slide 52)
- **Structure** — what pattern organises the sector? (**balance of power? market? economic dependence?**) (Slide 53)
- *Example:* military sector → units: states; interaction: warfare/threats; structure: **balance of power**.
- *Example:* economic sector → units: corporations and states; interaction: trade; structure: **market** or **economic dependence**.
- → Units, interactions and structure together define a **system**; different theories stress different parts (e.g. structure for neorealism, economic dependence for economic structuralism).

### 10.2 A Risk in Sectoral Analysis (Slide 54)
**Keywords:** partial reality, total reality, reductionism, sector bias

- The observer begins to **confuse the partial reality of the sector with the total reality** of the whole international system (Slide 54).
- *Example:* treating world politics as **only** military balancing (ignoring trade and identity), or **only** markets (ignoring force).
- → Sectors are **analytical lenses, not the world itself**; good analysis combines them.
- One-liner: *a sector is a slice of reality — don't mistake the slice for the whole.*

## 11. One-Page Revision Spine
**Keywords:** last-minute recap, aims, theory, algorithms, levels, anarchy, security dilemma, sectors

1. **Course aims (Slides 2–3):** learn IR's **root discourses**; use their concepts to **illuminate real-world problems**.
2. **Nine root discourses (Slide 4):** realism; liberalism; neorealism and neoliberalism; economic structuralism; English School; constructivism; psychology and ontological security; critical theory; gender and IR.
3. **Real-world problem clusters (Slide 5):** rise of China/India and the liberal order; demography, climate, pandemics, existential risk; world political economy, technology, AI; gender and other inequalities, ethnicity, religion; regional tensions, wars, terrorism, revolution; ethics and global governance.
4. **Logistics (Slides 6–9):** {{A:Viotti & Kauppi}} (6th ed.) + *Oxford Handbook* ({{A:Reus-Smit & Snidal}}); **midterm quiz 13 Oct** (Weeks 1–6); final quiz due 24 Nov; group paper due 8 Dec; next week realism ({{A:Lake}}, {{A:Wohlforth}}).
5. **Text-analysis tool (Slides 10–22):** R/RStudio; demo of "national rejuvenation" in *People's Daily* (~0 pre-2000 → ~2,500/yr 2021–23) vs Zhihu; {{T:Structural Topic Model}} pipeline: setup → extraction → cleaning (corpus, DFM) → fitting (K) → visualisation.
6. **Student as research director (Slide 21):** question, corpus, K, topic labels, link to IR theory — AI is assistant, not replacement.
7. **Signal vs noise (Slides 23–28):** data overload; hot takes give *what* not *why*; events are symptoms; everyone uses (often unconscious) theory; goal = **cognitive supremacy**.
8. **Algorithmic society (Slides 29–32):** algorithms reorganise institutions; **coding elite** owns digital means of production; **code as law**; **data doubles**; threat to autonomy and democratic governance.
9. **Cognitive supremacy in the AI age (Slides 33–37):** geopolitical literacy; AI-proof critical/strategic thinking; anticipate the next move; frameworks for uncertainty.
10. **Levels of analysis (Slide 40):** individual (personality, perceptions, choices) → state (government, economy, interest groups, national interest) → international system (alliances, norms, IGOs, MNCs).
11. **Anarchy (Slide 41):** {{D:no central authority above sovereign states}} — the defining condition of the international system; anarchy ≠ chaos.
12. **Security dilemma (Slide 42):** A arms defensively → B reads it as offensive → B arms → A's mistrust confirmed → repeat. Evidence: nuclear testing dominated by US/USSR (Slide 43); 2026 inventories led by Russia ~4,400 and US ~3,700, with nine nuclear states and several growing stockpiles (Slide 44).
13. **Five sectors (Slides 45–50):** military (coercion, war-fighting) / political (authority, status, recognition) / economic (trade, production, finance) / socio-cultural (identity, ideas) / environmental (human activity vs biosphere).
14. **Sectoral analysis (Slides 51–54):** ask **unit** (states, corporations, NGOs), **interaction** (warfare, trade, persuasion), **structure** (balance of power, market, dependence); the risk is mistaking the **partial reality** of one sector for the **total reality** of the system.
