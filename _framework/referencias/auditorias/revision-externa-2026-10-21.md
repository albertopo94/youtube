Review of albertopo94/youtube
My preliminary verdict is a meaningful improvement in operational discipline, but not yet a fully validated production framework.

I reviewed the repository history, compared the changes through the current main head, and inspected the current instructions and production templates. The clearest starting point I can identify is commit 0edff3e, which added the October 18 audit report. I cannot independently confirm that this was exactly the last commit we reviewed in the other chat, so I’m treating it as the best verifiable baseline rather than claiming certainty.

Since that point, I found 40 subsequent commits, ending at 3b0ea08, dated October 21, 2026.

The big picture: you did more than patch individual errors. You progressively turned the repo into a more explicit production system, with persistent state, approval checkpoints, research procedures, script structures, asset tracking, and technical quality checks. Several changes were good corrections to earlier mistakes. Others introduced new rules before there was enough evidence to justify making them mandatory.

One distinction will guide the review: a successful render proves that a technical path can work; it does not, by itself, prove that the finished video satisfies the framework’s editorial, audio, visual, licensing, or monetization requirements. That is the main gap I see in the current state.
1. Commit-by-commit review, in chronological order
The ratings refer to the quality of each change when it was introduced, not merely whether some of its ideas survive in the current repository. Where a later commit corrected a mistake, I’ll say so.
October 18, 2026 — stabilising the foundation
#	Commit	My assessment
1	3808f897 — Workspace and licensing fixes	Good. Ignoring large media files and secrets, improving asset tracking, and distinguishing manual work from automation are sensible changes. One warning: the API limitations must be described precisely. The current YouTube API documentation permits setting a video’s visibility; an unverified API project is not, by itself, forced to upload privately. The current tool catalog now reflects this more accurately. 

developers.google.com
2	b25aa9cb — Removing the old workflow and audit	Good, with a reservation. Removing an obsolete workflow after integrating its useful material avoids competing sources of instructions. Deleting the audit itself, however, weakens historical traceability. Archiving it as superseded would be safer.
3	16e4f1d1 — Audio-first pipeline, block IDs and animatic	Very good. Stable block IDs help synchronize narration with scenes, and approving an animatic before generating expensive assets is a sensible production gate. Later changes correctly made this workflow dependent on the type of video rather than universal.
4	1a1d1a40 — Architecture audit and workflow simulation	Mixed. The analysis of agent context drift and human approval checkpoints is useful. The simulated workflow and estimates of automation, however, are not proof that an actual end-to-end production has succeeded. A simulation should be labelled as such.
5	12f4de7a — Task continuity and production state	Very good. This is one of the most valuable changes. Reading persistent state, checking real files, recording blockers, and identifying the next permitted action directly address the risk of an agent assuming that work was completed just because a note or checkbox says so.
October 19 — handoffs, research and creative methodology
#	Commit	My assessment
6	bc2e5b7a — Tool mapping and handoffs	Good, but expansive. Mapping tools to production phases and requiring approval before adding new dependencies is sensible. The danger is adding more tools and workflow instructions than the pilot can validate.
7	d1b1bbd1 — Detailed handoff protocols	Good. Requiring prompts, exact destination tools, and ready-to-use publication metadata makes agent handoffs more actionable. It is slightly over-prescriptive: not every tool requires the same information, so the format should allow fields to be marked not applicable.
8	df4bcaa2 — Demand engineering and audience awareness	Good as a heuristic. Thinking about the viewer’s existing desires and connecting them to an unfamiliar subject can strengthen packaging. It should remain a way to generate hypotheses, not a law claiming that every successful video follows the same mechanism.
9	27c1ffd3 — Hybrid DFS niche research	Good. The depth-first exploration of search results and recommendations gives research a repeatable method. Correctly distinguishing the agent’s role from the creator’s manual browser work prevents pretending that the entire process is automated. The example rows must remain clearly marked as examples, not actual research findings.
10	385edf44 — Three-step intro formula	Mixed. Reaffirming the promise, establishing credibility, and orienting the viewer can work well in educational or business videos. They should not be requirements for every genre. You later moved in the right direction by making narrative techniques genre-dependent.
11	9f7b2995 — Useful-next-step CTA	Good. An organically relevant next step is better than forcing an unrelated commercial pitch. The important improvement is that the CTA should follow the video’s purpose, not obey a sales formula.
12	2faf302b — Channel archetypes and lifecycle	Very good. Adapting CTAs to a channel’s maturity and type of content corrects an important weakness in the previous commit. Entertainment should not be forced into lead magnets and sales funnels.
13	5ec65a7b — Negative evidence and anti-decoration	Good, with some caution. Studying failed examples alongside successful ones helps prevent survivorship bias. The rule that every visual should contribute something is also sound. But “the channel is one campaign” should guide editorial coherence, not prohibit every deliberate experiment outside the existing subject matter.
14	d32366e1 — YMYL, factual checks and contingency	Good intention, incomplete implementation. Risk controls for science, health and finance are necessary. A fixed rule that factual verification does not apply to fiction is too broad: fiction may contain factual claims about real people, places, history or science. The amount of checking should depend on the claims and their risk.
15	da12c1ed — Luvvoice added	Reasonable, but not a proven integration. Adding a possible free TTS option can reduce friction. The catalog must distinguish having an MCP URL from successfully using the MCP to produce a reproducible asset. Its current green “available/MCP” status also conflicts with the legend, where green means proven.
16	9fda96d2 — Google Images handoff	Good with a legal caveat. The generated search URLs can speed up asset discovery. They do not establish that an image is licensed for commercial use. The current catalog correctly treats Google Images as discovery and manual handoff, not automated license verification.
17	6bc2de81 — Separating Google Flow and Flow Music	Good. Separating cinematic visual generation from music generation clarifies which tool belongs to which production task. The remaining question is whether each tool’s current capabilities, costs and rights have been verified for your use case.
18	52a485ca — Expanding Google AI Studio to TTS and multimodal use	Good, but model-specific claims matter. The catalog should tie limits to the actual model and operation rather than describe all of AI Studio as having one context window. The current Google documentation distinguishes the large context window of Gemini 3.8 Flash from the 8,192-token input limit of Gemini 3.8 Flash TTS. 

ai.google.dev
+1
19	8c5f63e0 — Flow storyboards and character consistency	Mixed. Using references to maintain visual continuity is sensible. But a tool’s theoretical capability is not proof that it has produced acceptable, consistent results in your workflow.
20	361a2b1c — Shorts strategy and anti-shadowban	Bad in its original form. The commit introduced claims that the first viral result typically comes after the second to fourth upload, that a new account must be warmed up for seven days, and that reuploads require modifying the audio, video and metadata to avoid a supposed hash-based shadowban. Those claims were presented too confidently without evidence. You later removed or softened the problematic guidance.
21	50c75e89 — Six-phase Shorts formula and AI-content doctrine	Mixed to poor. The process/transform/reveal structure may help some Shorts. The fixed 12-hour wait and the suggestion that replacing 30–50% of shots with AI content ensures monetization were not defensible universal rules. YouTube evaluates originality and whether content is repetitive or mass-produced; it does not promise monetization for a particular AI-shot percentage. 

YouTube Help
22	9469313a — Removing rigid creative rules	Very good. This moved narrative and packaging advice toward genre-adaptive heuristics. It corrected a real methodological problem: the framework should help an agent make better creative decisions, not force all videos into a single shape.
23	6a8e80b6 — Genre-adaptive narrative and packaging	Good. The introduction, screen composition and thumbnail guidance became more sensitive to the genre and the viewing device. This is a sound correction to universal rules that were too rigid.
24	bd87acef — Updating a video transcript/reference	Useful, but it needs provenance. External videos can inform research. The framework should preserve the source URL, creator and date, and distinguish the source’s claims from verified facts. A transcript itself is not an authoritative source for claims about YouTube’s algorithm.
25	dc70ec35 — Looped arcs, open loops and value-added editing	Mixed. The dramatic structure can be useful, and added editorial value is important. But this commit also continued the pattern of turning uncertain growth advice into rules, including upload-spacing and reupload prescriptions. Those parts needed the correction that followed.
26	5331adaf — Aligning rules with official YouTube policy	One of the best corrections. It removed unsupported timing, reupload and AI-replacement rules, and clarified that attribution alone does not grant usage rights. It also moved toward separating factual research from verification of the final script. YouTube’s own guidance recommends a sustainable publishing schedule rather than a magic interval that guarantees reach. 

YouTube Help
+1
27	4e3c1630 — Residual myths and render inspection	Very good. Removing the “second-to-fourth upload” assumption and adding a technical inspection checklist are practical improvements. Keep the audit history, however, and record which findings were actually verified as fixed.
28	5a980251 — Importing a master script prompt	Poor as a canonical method; understandable as a reference. The imported prompt prescribed a rigid block structure and used claims such as scaling “without limit.” That is incompatible with the more adaptable framework you were building. The subsequent decision to archive it rather than give it authority was correct.
29	fd0acda4 — Narrative toolbox and credible scripts	Very good. Banning invented credentials and fictitious personal experience is essential. Archiving the external prompt as a reference, instead of letting it dictate every script, also improves governance.
30	fc692113 — Long-term creative vision	Good. The idea of treating YouTube as a route to series, original IP and independent production expands the strategic horizon without assuming every concept must become a film or series. Keeping budgets and revenue as facts that require verification is appropriate.
31	9683249d — Reconciling contracts and the second audit	Very good. Separating mandatory requirements from optional narrative techniques is precisely the kind of correction the system needed. It also strengthens factual verification and lifecycle documentation. Some inconsistencies remain in the current templates, so I would call this substantially improved, not fully closed.
32	5450872f — Isolated testing sandbox	Good idea, unsafe implementation detail. A separate sandbox is the right way to test agents without polluting the master repo. But rsync -av --exclude='.git' does not honour .gitignore; it copies ignored .env files, keys, caches and local outputs into the sandbox. Git might subsequently ignore these files during a standard add, but they are still present for the agent to read or mishandle. The copy command needs explicit exclusions.
33	a4b00b85 — Idea backlog and blacklist	Good. Persisting approved ideas and remembering rejected topics prevents repetitive discussions and loss of decisions. Important technical distinction: this is a prompt-enforced linter, not a program that automatically checks the list.
34	6c6463ed — Anti-spoiler progression and dramatic block names	Mixed. This can improve scripts for a particular mystery or educational format. But forbidding the central mechanism from appearing before a specific block and prescribing where the payoff must occur can damage tutorials, direct explanations, and other formats. Also, the new script timings were not fully synchronized with the storyboard table.
35	bb60f285 — Neural TTS, aesthetic honesty and executive communication	Good. Requiring the agent not to invent a visual identity from a few vague notes directly addresses an important failure mode. Neural TTS is a sensible default for judging narration quality, although the framework should preserve alternatives where access, price or licensing requires them.
36	8801c844 — Modular editing and four polish layers	Good in principle, mixed in the details. Mixed sources, clear traceability and deliberate visual contrast are useful. The framework should not assume that every format needs the same number of polish operations or that every claimed FilmCraft command has been validated in your installation.
37	8dd4a1f8 — Unambiguous prompt delivery cards	Good. Naming asset type, destination tool, module and operating mode solves real handoff ambiguity. But the same rule is repeated in several places, and the sample timecodes were left stale. This illustrates why a central contract and automated consistency checks would now be more valuable than adding more prose.
38	e7664f40 — Shot pacing and three-track audio	Mixed. The intent—avoid lifeless assembly and inspect sound before delivery—is right. The fixed visual-change window of 4–7 seconds and the mandatory three-track layout with specific loudness and ducking values are too rigid to apply to every genre. Quiet, ambient, explanatory or deliberately static videos may need different choices. The quality gate should measure and evaluate the result, not enforce arbitrary constants.
39	e7a17d7e — EffectCraft promotion and pilot lessons	Mixed, with useful technical documentation. Recording the sequence initialization requirement, timebase, --save behaviour and render speed is excellent. But EffectCraft is marked “proven” and mandated for V2 overlays without the repository preserving a specific EffectCraft test result. Meanwhile, FilmCraft remains labelled “candidate for pilot” even though a successful pilot render is documented. Those states contradict the evidence recorded in the same file.
40	3b0ea08d — Archiving final agent feedback	Useful but incomplete. Capturing the retrospective is the right idea. However, the newly added file substantially duplicates the FilmCraft diary and has an awkward filename. A cleaned incident report linked to the original feedback would avoid having two competing records of the same events.
2. What you actually solved
The most valuable changes are not the ones that added the most rules. They are the ones that make the framework less likely to mislead the agent or waste your time.

A. Persistent production state

The framework now has a much clearer contract for reading actual files, identifying the active phase, recording blockers, and handing work over. This was a genuine architectural improvement.




B. The separation between evidence and creative heuristics

The later audits corrected several unsupported claims about publishing frequency, account warming and magical AI-content percentages. This was important because an elaborate framework can otherwise institutionalise bad assumptions.




C. Technical friction captured after the FilmCraft run

The diary records actionable obstacles: missing graphics dependencies, the need to initialise a sequence, the unusual timebase, the persistence flag and the rendering delay on Intel hardware. These are useful lessons because they derive from attempted execution, not just theoretical architecture.




D. The remaining gap is evidence of quality, not merely technical success

The log reports a 9-minute-36-second render, 14 visual panels and one MP3, but does not provide objective measurements proving that the final file passed every new audio and visual requirement. The record does not demonstrate measured loudness, working ducking, correctly timed SFX, absence of black frames or compliance with the new visual-pacing rules. That does not prove the video failed those checks; it means the repo does not prove that it passed them.



3. The problems I would fix now, in priority order
These are the issues I consider worth addressing before expanding the methodology further.
Priority 0 — Security of the sandbox
The command introduced in 5450872 copies the project with rsync and excludes only .git. That is not an adequate security boundary.

The sandbox should exclude at least environment variables and credentials, private keys, local configuration, caches, raw recordings, renders and exports. It should also be explicit about which files an agent is allowed to access. The point of isolation is not only to keep the Git history clean; it is to keep experiments from accessing secrets or production artefacts unnecessarily.
Priority 1 — Reconcile the storyboard and script timecodes
The current _framework/plantillas/pipeline-video-template/02-guion.md gives the following example intervals:
Script block	Current example
B01 — Initial dilemma	00:00–00:15
B02 — False cause	00:15–00:40
B03 — Anomaly	00:40–01:20
But the sample table in 03-storyboard-y-edicion.md still contains older intervals: B01 ends at 00:08, B02 at 00:25 and B03 at 01:10. Its example block IDs are also from the previous structure.

This is exactly the kind of small documentary inconsistency that can send an agent in the wrong direction during production. Correct the examples together, or replace fixed sample timecodes with a clear instruction to derive them from the approved script and real narration.
Priority 1 — Revisit the mandatory visual and audio rules
The current editing template contains two competing rules: no static shot should exceed 4–7 seconds, and static images lasting more than 3 seconds should receive a zoom or pan. These are not the same threshold, and neither is appropriate for every genre.

The three-track audio requirement is a useful production pattern, but the specific target values should not be treated as universal laws. Establish a default profile for the intended format, permit justified exceptions, and verify the final render through measured audio properties and actual listening.

The key distinction is between requiring an editorial result—clear narration, intelligible balance, appropriate pacing—and requiring one particular technique to achieve that result.
Priority 1 — Make tool validation consistent
In _framework/herramientas-y-apis.md, the validation legend says green means proven and yellow means available/documented. Yet Luvvoice, Google Flow and Google Flow Music have green statuses despite being marked available/documented.

The bigger contradiction is FilmCraft. The catalog still calls it a candidate for a pilot, while the same document records a successful pilot render. EffectCraft is now marked proven, but I did not find a corresponding EffectCraft-specific test log or output record in the repo.

I would use three separate evidence-backed labels:
- Documented: the feature exists in official documentation.
- Tested: a specific operation was executed and its result inspected.
- Validated for this workflow: the complete operation met explicit acceptance criteria in your environment.
A successful image render is not proof of a complete video-editing workflow. Equally, a successful basic timeline export is not proof that all advertised editing, motion-graphics and audio functions are ready for production.
Priority 1 — Check the fact-verification exemption for fiction
The current template says fact-checking is not applicable to the “Fiction” regime. That should be narrowed.

Fiction does not automatically remove all factual claims. A story can mention real events, places, people, historical facts or scientific concepts. Those claims still need the appropriate level of verification, while the additional safety controls should depend on the risk posed by an error.
Priority 2 — Keep one source of truth for the pilot
The latest feedback commit duplicates much of the existing FilmCraft technical diary. Keep the original feedback if its wording matters, but make the technical diary the main operational record and link the source to it.

The same principle applies to audit reports. Every finding should have a status—open, fixed, partially fixed or tested—and reference the commit that addressed it. A note saying “integrated and reconciled” is not the same thing as proving all findings are resolved.
4. What the framework is—and is not—today
The current repo has a reasonably strong structure for guiding agents, coordinating approvals, documenting research and tracking assets. It is still primarily a collection of Markdown instructions and templates.

I did not find an executable orchestration system or automated test suite in the current repository. Therefore, terms such as “mandatory linter,” “verified delivery” and “quality gate” describe instructions for the agent, not yet automated controls capable of detecting every violation.

That distinction matters for YouTube policy as well. Your current factual-verification, originality and licensing controls reduce risk, but they cannot guarantee that a video will be approved for monetization. YouTube’s policy focuses on original, authentic work and excludes repetitive or mass-produced content; the framework should be considered a risk-management process, not a guarantee of acceptance. 

YouTube Help




One relevant point you appear to have retained correctly: the current script checklist explicitly considers whether AI-generated music requires disclosure. YouTube’s published Help guidance currently includes AI-generated music among disclosure examples, so I would retain that control and make the final decision through the current YouTube Studio workflow. 

Ayuda de YouTube



5. My recommendation for the next iteration
I would stop adding new creative methodology for now and spend the next iteration on a small acceptance suite.

It should verify that every required file exists, that phase states use permitted values, that script and storyboard timings agree, that each tool’s status matches its evidence, and that the final render meets the technical requirements selected for that video. For the media check, save a reproducible report containing duration, resolution, frame rate, video and audio codecs, audio-track details, loudness measurements and any failed inspection checks.

Then run one controlled production using that contract. Record not just whether the file renders, but how many failed attempts occurred, which steps required manual intervention, which capabilities were actually exercised, how long each stage took, and whether the final file passed the acceptance suite.

This would convert the latest pilot from an encouraging anecdote into a repeatable baseline.

Overall judgement: most of the architectural corrections since the audit were worthwhile, and several were excellent. The weak point is that the framework became more prescriptive faster than it accumulated reproducible evidence. The next step should be less Markdown and more validation.
