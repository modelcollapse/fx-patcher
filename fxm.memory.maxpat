{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   100,
   100,
   1700,
   620
  ],
  "openinpresentation": 0,
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      20.0,
      50.0,
      22.0
     ],
     "text": "in~ 1",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      300.0,
      20.0,
      50.0,
      22.0
     ],
     "text": "in~ 2",
     "outlettype": [
      "signal"
     ]
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      20.0,
      40.0,
      22.0
     ],
     "text": "in 3",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 17,
     "patching_rect": [
      600.0,
      60.0,
      700.0,
      22.0
     ],
     "text": "route k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16",
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      20.0,
      560.0,
      50.0,
      22.0
     ],
     "text": "out~ 1"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      300.0,
      560.0,
      50.0,
      22.0
     ],
     "text": "out~ 2"
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 16,
     "numoutlets": 18,
     "patching_rect": [
      20.0,
      480.0,
      300.0,
      22.0
     ],
     "text": "gen~",
     "varname": "engine",
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "patcher": {
      "fileversion": 1,
      "classnamespace": "dsp.gen",
      "rect": [
       0,
       0,
       1040,
       560
      ],
      "boxes": [
       {
        "box": {
         "id": "code",
         "maxclass": "codebox",
         "numinlets": 16,
         "numoutlets": 18,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          24,
          64,
          970,
          425
         ],
         "code": "// Explicitly wrap the two interpolation neighbors at the musical loop edge.\n// Generation tags make Clear immediate without clearing millions of samples.\nreadRhythm(memory, phase, length, epoch, lane) {\n    position = wrap(phase, 0, length);\n    leftIndex = floor(position);\n    rightIndex = wrap(leftIndex + 1, 0, length);\n    fraction = position - leftIndex;\n    left = peek(memory, leftIndex, 2) == epoch ? peek(memory, leftIndex, lane) : 0;\n    right = peek(memory, rightIndex, 2) == epoch ? peek(memory, rightIndex, lane) : 0;\n    return left + fraction * (right - left);\n}\n\n// Map each logical slice to a different stored slice. A short edge fade\n// makes the reordered boundaries work in either playback direction.\nreadRhythmFx(memory, phase, length, epoch, lane, cuts, rotation, stride, edgeFrames) {\n    readPhase = phase;\n    edgeGain = 1;\n    if (cuts > 1) {\n        sliceLength = length / cuts;\n        position = wrap(phase, 0, length);\n        slice = min(cuts - 1, floor(position / sliceLength));\n        within = position - slice * sliceLength;\n        fromSlice = wrap(slice * stride + rotation, 0, cuts);\n        readPhase = fromSlice * sliceLength + within;\n        fadeLength = max(0.001, min(edgeFrames, 0.20 * sliceLength));\n        edge = clamp(min(within, sliceLength - within) / fadeLength, 0, 1);\n        edgeGain = edge * edge * (3 - 2 * edge);\n    }\n    return edgeGain * readRhythm(memory, readPhase, length, epoch, lane);\n}\n\n// The lifted write cursor visits a contiguous interval after Clear, even\n// when it reverses. Gate both ends of every interpolated read against it.\nreadWritten(memory, address, firstWritten, writtenSpan, lane) {\n    length = dim(memory);\n    index = wrap(address, 0, length);\n    distance = wrap(floor(index) - firstWritten, 0, length);\n    nextDistance = wrap(distance + 1, 0, length);\n    ready = distance <= writtenSpan && (index == floor(index) || nextDistance <= writtenSpan);\n    return ready ? peek(memory, index, lane, interp=\"linear\", boundmode=\"wrap\") : 0;\n}\n\n// At a flip, the old tap first retraces the just-heard tape. The turning\n// head then follows the old recording just ahead of the writer, so an\n// unheard recent take is replayed before its cells are overwritten.\n// Once a full delay has passed, hand off to newly written material.\nreadTransport(memory, head, direction, travel, distance, baseDelay, handoff, firstWritten, writtenSpan, lane) {\n    afterTurn = clamp((travel - baseDelay - 2) / handoff, 0, 1);\n    normal = readWritten(memory, head - direction * distance, firstWritten, writtenSpan, lane);\n    signal = normal;\n    if (afterTurn < 1) {\n        offset = distance - baseDelay;\n        oldAddress = head + direction * clamp(baseDelay - offset, 1, dim(memory) - 2);\n        turnAddress = head + direction * clamp(1 - offset, 1, dim(memory) - 2);\n        oldSide = readWritten(memory, oldAddress, firstWritten, writtenSpan, lane);\n        turnSide = readWritten(memory, turnAddress, firstWritten, writtenSpan, lane);\n        turnFade = clamp(travel / handoff, 0, 1);\n        inherited = oldSide + turnFade * (turnSide - oldSide);\n        signal = inherited + afterTurn * (normal - inherited);\n    }\n    return signal;\n}\n\n// Program and speed codes are integers. A half-step bias prevents\n// reciprocal rounding at the exact boundaries in Max 9.1.5.\n// 24 seconds per lane at 192 kHz. All twelve programs share these lanes.\nData tape(4608000, 4);\n// Separate stereo loop and per-frame generation tag. A long loop exceeding\n// this allocation reduces stored sample density but keeps its beat period.\nData rhythmTape(4608000, 3);\nData rhythmVerbTape(16384, 4);\nParam tempo(120, min=20, max=400);\nParam beats_per_bar(4, min=0.5, max=32);\nParam rhythm_free(0, min=0, max=1);\nParam rhythm_style(0, min=0, max=6);\nParam mode(0, min=0, max=4);\nParam size(0, min=0, max=2);\nParam record(0, min=0, max=3);\nParam reverse(0);\nParam half_speed(0);\nParam pitch(0, min=-12, max=0);\nParam erase(0);\nParam clear(0, min=0, max=1000000);\nParam hold(0, min=0, max=1);\nParam panic(0, min=0, max=1000000);\nParam width(1, min=0, max=2);\nParam feedback(0.82, min=0, max=1.1);\nParam blur(0.32);\nParam drift(0.45);\nParam mix(1);\nParam return_mix(35, min=0, max=100);\nHistory mod_mix_state(0.35);\nHistory mod_tempo_offset(0);\nHistory mod_beats_per_bar_offset(0);\nParam drive(0);\nParam dynamics(0, min=-1, max=1);\nParam hpf(0, min=0, max=4);\nParam lpf(0, min=0, max=4);\nParam hpf_hz(65, min=20, max=2000);\nParam lpf_hz(5600, min=200, max=20000);\nParam input_db(0, min=-24, max=12);\nParam output_db(0, min=-24, max=6);\nParam mono_input(0);\nParam input_gate(1, min=0, max=2);\nHistory monoAmount(0);\nHistory gateEnvelope(0);\nHistory gateGain(0);\n\nHistory writeHead(0);\nHistory rhythmFade(0);\nHistory rhythmFrames(0);\nHistory rhythmFirstPeriod(0);\nHistory rhythmCursor(0);\nHistory rhythmRightCursor(0);\nHistory rhythmLastStyle(0);\nHistory rhythmTakeFree(0);\nHistory rhythmStyleFade(0);\nHistory rhythmRightLastSample(0);\nHistory rhythmRightFadeFrom(0);\nHistory rhythmEpoch(1);\nHistory rhythmRecordingFirst(0);\nHistory rhythmGrainPhase(0);\nHistory rhythmFxCycle(0);\nHistory rhythmOctaveState(1);\nHistory rhythmVerbHead(0);\nHistory rhythmVerbWritten(0);\nHistory rhythmVerbTailFrames(0);\nHistory rhythmVerbPanic(0);\nHistory rhythmVerbControl(0);\nHistory rhythmVerbToneStateA(0);\nHistory rhythmVerbToneStateB(0);\nHistory rhythmVerbToneStateC(0);\nHistory rhythmVerbToneStateD(0);\nHistory wetHighL(0);\nHistory wetHighR(0);\nHistory wetLowL(0);\nHistory wetLowR(0);\nHistory firstWritten(0);\nHistory lastWritten(-1);\nHistory transportDirection(1);\nHistory directionFrames(4608000);\nHistory clearSeen(0);\nHistory fadeLeft(0);\nHistory holdState(0);\nHistory panicSeen(0);\nHistory panicClearing(0);\nHistory panicNeedsOff(0);\nHistory widthState(1);\nHistory pitchRatioState(1);\nHistory sourceConfig(0);\nHistory targetConfig(0);\nHistory changePhase(1);\nHistory captureA(0);\nHistory captureB(0);\nHistory feedbackState(0.82);\nHistory blurState(0.32);\nHistory driftState(0.45);\nHistory mixState(0.55);\nHistory driveState(0);\nHistory dynamicsState(0);\nHistory eraseState(0);\nHistory inputGain(1);\nHistory outputGain(1);\nHistory highState(0);\nHistory highMix(0);\nHistory lowState(0);\nHistory lowMix(0);\nHistory inputEnvelope(0);\nHistory combinedEnvelope(0);\nHistory panPhaseA(0.13);\nHistory panPhaseB(0.47);\nHistory wanderPhaseA(0.18);\nHistory wanderPhaseB(0.64);\nHistory grainClock(0);\nHistory captureClock(0);\nHistory wasRecording(0);\nHistory chaosClockA(0.37);\nHistory chaosClockB(0.73);\nHistory chaosA(0.371);\nHistory chaosB(0.617);\nHistory wanderA(0.371);\nHistory wanderB(0.617);\nHistory toneHighA(0);\nHistory toneLowA(0);\nHistory toneHighB(0);\nHistory toneLowB(0);\nHistory toneHighC(0);\nHistory toneLowC(0);\nHistory toneHighD(0);\nHistory toneLowD(0);\n\ntwoPi = 6.283185307179586;\ncapacity = dim(tape);\nfadeFrames = max(2, round(samplerate * 0.025));\n// Panic uses the same wet fade and buffer invalidation as Clear All.\npanicPressed = panic != panicSeen;\npanicClearActive = panicPressed || panicClearing;\nnewClear = ((clear != clearSeen) || panicPressed) && (fadeLeft == 0);\ncleared = fadeLeft == 1;\nremaining = newClear ? fadeFrames : max(0, fadeLeft - 1);\nwetFade = remaining > 0 ? remaining / fadeFrames : 1;\nwrittenSpan = cleared ? -1 : min(lastWritten - firstWritten, capacity - 1);\nwriteIndex = wrap(writeHead, 0, capacity);\ndirection = reverse >= 0.5 ? -1 : 1;\nturned = direction != transportDirection;\ntravel = turned ? 0 : directionFrames;\nhandoff = max(2, round(0.04 * samplerate));\n\n// Crossfade discrete programs and half-speed reads. A quick series of changes\n// settles on the most recent selection after the current fade completes.\nrhythmSelected = round(clamp(mode, 0, 4)) == 4;\nrhythmFadeStep = 1.0 / (0.12 * samplerate);\nrhythmNextFade = rhythmSelected ? min(1, rhythmFade + rhythmFadeStep) : max(0, rhythmFade - rhythmFadeStep);\nrhythmBlend = rhythmNextFade * rhythmNextFade * (3 - 2 * rhythmNextFade);\nambientRuns = !rhythmSelected || rhythmNextFade < 1;\nrhythmRuns = rhythmSelected || rhythmFade > 0;\nrequested = rhythmSelected ? targetConfig : 3 * round(clamp(mode, 0, 3)) + round(clamp(size, 0, 2))\n          + 12 * (half_speed >= 0.5);\nstartChange = (changePhase >= 1) && (requested != targetConfig);\noldConfig = startChange ? targetConfig : sourceConfig;\nnewConfig = startChange ? requested : targetConfig;\nprogress = startChange ? 0 : min(1, changePhase + 1.0 / (0.12 * samplerate));\namount = progress * progress * (3 - 2 * progress);\noldProgram = oldConfig - 12 * floor((oldConfig + 0.5) / 12.0);\nnewProgram = newConfig - 12 * floor((newConfig + 0.5) / 12.0);\noldMode = floor((oldProgram + 0.5) / 3.0);\nnewMode = floor((newProgram + 0.5) / 3.0);\n\n// Prime lengths at 48 kHz, scaled to the host's sample rate.\ndriftPan = clamp(driftState, 0, 1);\nholdOn = hold >= 0.5;\nholdStep = 1 / (0.025 * samplerate);\nholdMix = holdOn ? min(1, holdState + holdStep) : max(0, holdState - holdStep);\n// At Hold or unity, the wet readers still wander, but integer feedback\n// taps avoid accumulating interpolation loss in the circulating copy.\ntapFeedback = feedbackState + holdMix * (1 - feedbackState);\nfeedbackMotion = clamp((0.9995 - tapFeedback) * 50, 0, 1);\nchaosTickA = chaosClockA + (0.19 + 0.12 * wanderB) / samplerate;\nchaosTickB = chaosClockB + (0.31 + 0.10 * wanderA) / samplerate;\nchaosNextA = chaosTickA >= 1 ? 3.91 * chaosA * (1 - chaosA) : chaosA;\nchaosNextB = chaosTickB >= 1 ? 3.97 * chaosB * (1 - chaosB) : chaosB;\nchaosSlew = 1 - exp(-1 / (0.77 * samplerate));\nslowA = wanderA + chaosSlew * (chaosNextA - wanderA);\nslowB = wanderB + chaosSlew * (chaosNextB - wanderB);\noffsetA = 0.58 * sin(twoPi * panPhaseA) + 0.42 * (2 * slowA - 1);\noffsetB = 0.58 * sin(twoPi * panPhaseB) + 0.42 * (2 * slowB - 1);\noffsetC = 0.61 * sin(twoPi * (panPhaseA + 0.29)) - 0.39 * (2 * slowB - 1);\noffsetD = 0.61 * sin(twoPi * (panPhaseB + 0.41)) - 0.39 * (2 * slowA - 1);\noldSize = oldProgram - 3 * oldMode;\noldPrimesA = 0; oldPrimesB = 0; oldPrimesC = 0; oldPrimesD = 0;\nif (oldMode == 0) {\n    oldPrimesA = oldSize == 0 ? 110879.0 : oldSize == 1 ? 425813.0 : 1000171.0;\n    oldPrimesB = oldSize == 0 ? 129119.0 : oldSize == 1 ? 486583.0 : 1095313.0;\n    oldPrimesC = oldSize == 0 ? 91253.0 : oldSize == 1 ? 350443.0 : 823153.0;\n    oldPrimesD = oldSize == 0 ? 99809.0 : oldSize == 1 ? 376127.0 : 846673.0;\n} else if (oldMode == 1) {\n    oldPrimesA = oldSize == 0 ? 99793.0 : oldSize == 1 ? 339289.0 : 459047.0;\n    oldPrimesB = oldSize == 0 ? 110927.0 : oldSize == 1 ? 377147.0 : 510271.0;\n    oldPrimesC = oldSize == 0 ? 124459.0 : oldSize == 1 ? 423179.0 : 572521.0;\n    oldPrimesD = oldSize == 0 ? 140593.0 : oldSize == 1 ? 478001.0 : 646721.0;\n} else if (oldMode == 2) {\n    oldPrimesA = oldSize == 0 ? 15217.0 : oldSize == 1 ? 27847.0 : 47629.0;\n    oldPrimesB = oldSize == 0 ? 22409.0 : oldSize == 1 ? 41023.0 : 70163.0;\n    oldPrimesC = oldSize == 0 ? 29423.0 : oldSize == 1 ? 53849.0 : 92107.0;\n    oldPrimesD = oldSize == 0 ? 37781.0 : oldSize == 1 ? 69127.0 : 118247.0;\n} else {\n    oldPrimesA = oldSize == 0 ? 20201.0 : oldSize == 1 ? 47903.0 : 107309.0;\n    oldPrimesB = oldSize == 0 ? 31337.0 : oldSize == 1 ? 74287.0 : 166429.0;\n    oldPrimesC = oldSize == 0 ? 42293.0 : oldSize == 1 ? 100213.0 : 224563.0;\n    oldPrimesD = oldSize == 0 ? 52951.0 : oldSize == 1 ? 125471.0 : 281131.0;\n}\noldDriftDepth = oldMode < 2 ? (0.0122 * driftPan) : oldMode == 2 ? 0.0034 : 0.0010;\noldA = round(samplerate * (oldPrimesA / 48000.0));\noldATap = clamp(oldA + samplerate * oldDriftDepth * offsetA, 2, capacity - 2);\noldB = round(samplerate * (oldPrimesB / 48000.0));\noldBTap = clamp(oldB + samplerate * oldDriftDepth * offsetB, 2, capacity - 2);\noldC = round(samplerate * (oldPrimesC / 48000.0));\noldCTap = clamp(oldC + samplerate * oldDriftDepth * offsetC, 2, capacity - 2);\noldD = round(samplerate * (oldPrimesD / 48000.0));\noldDTap = clamp(oldD + samplerate * oldDriftDepth * offsetD, 2, capacity - 2);\n\nnewSize = newProgram - 3 * newMode;\nnewPrimesA = 0; newPrimesB = 0; newPrimesC = 0; newPrimesD = 0;\nif (newMode == 0) {\n    newPrimesA = newSize == 0 ? 110879.0 : newSize == 1 ? 425813.0 : 1000171.0;\n    newPrimesB = newSize == 0 ? 129119.0 : newSize == 1 ? 486583.0 : 1095313.0;\n    newPrimesC = newSize == 0 ? 91253.0 : newSize == 1 ? 350443.0 : 823153.0;\n    newPrimesD = newSize == 0 ? 99809.0 : newSize == 1 ? 376127.0 : 846673.0;\n} else if (newMode == 1) {\n    newPrimesA = newSize == 0 ? 99793.0 : newSize == 1 ? 339289.0 : 459047.0;\n    newPrimesB = newSize == 0 ? 110927.0 : newSize == 1 ? 377147.0 : 510271.0;\n    newPrimesC = newSize == 0 ? 124459.0 : newSize == 1 ? 423179.0 : 572521.0;\n    newPrimesD = newSize == 0 ? 140593.0 : newSize == 1 ? 478001.0 : 646721.0;\n} else if (newMode == 2) {\n    newPrimesA = newSize == 0 ? 15217.0 : newSize == 1 ? 27847.0 : 47629.0;\n    newPrimesB = newSize == 0 ? 22409.0 : newSize == 1 ? 41023.0 : 70163.0;\n    newPrimesC = newSize == 0 ? 29423.0 : newSize == 1 ? 53849.0 : 92107.0;\n    newPrimesD = newSize == 0 ? 37781.0 : newSize == 1 ? 69127.0 : 118247.0;\n} else {\n    newPrimesA = newSize == 0 ? 20201.0 : newSize == 1 ? 47903.0 : 107309.0;\n    newPrimesB = newSize == 0 ? 31337.0 : newSize == 1 ? 74287.0 : 166429.0;\n    newPrimesC = newSize == 0 ? 42293.0 : newSize == 1 ? 100213.0 : 224563.0;\n    newPrimesD = newSize == 0 ? 52951.0 : newSize == 1 ? 125471.0 : 281131.0;\n}\nnewDriftDepth = newMode < 2 ? (0.0122 * driftPan) : newMode == 2 ? 0.0034 : 0.0010;\nnewA = round(samplerate * (newPrimesA / 48000.0));\nnewATap = clamp(newA + samplerate * newDriftDepth * offsetA, 2, capacity - 2);\nnewB = round(samplerate * (newPrimesB / 48000.0));\nnewBTap = clamp(newB + samplerate * newDriftDepth * offsetB, 2, capacity - 2);\nnewC = round(samplerate * (newPrimesC / 48000.0));\nnewCTap = clamp(newC + samplerate * newDriftDepth * offsetC, 2, capacity - 2);\nnewD = round(samplerate * (newPrimesD / 48000.0));\nnewDTap = clamp(newD + samplerate * newDriftDepth * offsetD, 2, capacity - 2);\n\n// Fixed feedback taps retain the original linear-interpolated reads.\noldFeedbackA = oldA + feedbackMotion * (oldATap - oldA);\noldTapA = readTransport(tape, writeHead, direction, travel, oldFeedbackA, oldA, handoff, firstWritten, writtenSpan, 0);\nnewFeedbackA = newA + feedbackMotion * (newATap - newA);\nnewTapA = readTransport(tape, writeHead, direction, travel, newFeedbackA, newA, handoff, firstWritten, writtenSpan, 0);\nreturnA = ((oldTapA) + (amount) * ((newTapA) - (oldTapA)));\noldFeedbackB = oldB + feedbackMotion * (oldBTap - oldB);\noldTapB = readTransport(tape, writeHead, direction, travel, oldFeedbackB, oldB, handoff, firstWritten, writtenSpan, 1);\nnewFeedbackB = newB + feedbackMotion * (newBTap - newB);\nnewTapB = readTransport(tape, writeHead, direction, travel, newFeedbackB, newB, handoff, firstWritten, writtenSpan, 1);\nreturnB = ((oldTapB) + (amount) * ((newTapB) - (oldTapB)));\noldFeedbackC = oldC + feedbackMotion * (oldCTap - oldC);\noldTapC = readTransport(tape, writeHead, direction, travel, oldFeedbackC, oldC, handoff, firstWritten, writtenSpan, 2);\nnewFeedbackC = newC + feedbackMotion * (newCTap - newC);\nnewTapC = readTransport(tape, writeHead, direction, travel, newFeedbackC, newC, handoff, firstWritten, writtenSpan, 2);\nreturnC = ((oldTapC) + (amount) * ((newTapC) - (oldTapC)));\noldFeedbackD = oldD + feedbackMotion * (oldDTap - oldD);\noldTapD = readTransport(tape, writeHead, direction, travel, oldFeedbackD, oldD, handoff, firstWritten, writtenSpan, 3);\nnewFeedbackD = newD + feedbackMotion * (newDTap - newD);\nnewTapD = readTransport(tape, writeHead, direction, travel, newFeedbackD, newD, handoff, firstWritten, writtenSpan, 3);\nreturnD = ((oldTapD) + (amount) * ((newTapD) - (oldTapD)));\n\ncontrol = 1 - exp(-1 / (0.020 * samplerate));\nmod_return_mix = clamp(return_mix * 0.01 + clamp(fixnan(in3), -1, 1), 0, 1);\nmod_mix_smoothed = mod_mix_state + control * (mod_return_mix - mod_mix_state);\nmod_mix_state = mod_mix_smoothed;\nmod_feedback = clamp(feedback + 0.5 * clamp(fixnan(in4), -1, 1), 0, 1.1);\nmod_blur = clamp(blur + 1 * clamp(fixnan(in5), -1, 1), 0, 1);\nmod_drift = clamp(drift + 1 * clamp(fixnan(in6), -1, 1), 0, 1);\nmod_drive = clamp(drive + 1 * clamp(fixnan(in7), -1, 1), 0, 1);\nmod_dynamics = clamp(dynamics + 1 * clamp(fixnan(in8), -1, 1), -1, 1);\nmod_input_db = clamp(input_db + 12 * clamp(fixnan(in9), -1, 1), -24, 12);\nmod_output_db = clamp(output_db + 12 * clamp(fixnan(in10), -1, 1), -24, 6);\nmod_width = clamp(width + 1 * clamp(fixnan(in11), -1, 1), 0, 2);\nmod_pitch = clamp(pitch + 12 * clamp(fixnan(in12), -1, 1), -12, 0);\nmod_hpf_hz = clamp(hpf_hz * pow(2, 3 * clamp(fixnan(in13), -1, 1)), 20, 2000);\nmod_lpf_hz = clamp(lpf_hz * pow(2, 3 * clamp(fixnan(in14), -1, 1)), 200, 20000);\nmod_tempo_offset_next = mod_tempo_offset + control * (clamp(fixnan(in15), -1, 1) - mod_tempo_offset);\nmod_tempo_offset = mod_tempo_offset_next;\nmod_tempo = clamp(tempo + 60 * mod_tempo_offset_next, 20, 400);\nmod_beats_per_bar_offset_next = mod_beats_per_bar_offset + control * (clamp(fixnan(in16), -1, 1) - mod_beats_per_bar_offset);\nmod_beats_per_bar_offset = mod_beats_per_bar_offset_next;\nmod_beats_per_bar = clamp(beats_per_bar + 3 * mod_beats_per_bar_offset_next, 0.5, 32);\n// Wet read speed only. Snap the vanishing slew remainder so 0 st\n// returns to the exact, direct 1x delay path.\npitchTarget = pow(2, clamp(mod_pitch, -12, 0) / 12);\npitchSmoothed = pitchRatioState + control * (pitchTarget - pitchRatioState);\npitchRatio = (pitchTarget == 1 && pitchSmoothed > 0.99999) ? 1 : pitchSmoothed;\npitchRatioState = pitchRatio;\ngroup = round(clamp(record, 0, 3));\nrecording = group != 0;\n// Record Off acknowledges Panic, including if both arrive in one block.\n// The current clear must finish before any newly armed recording can write.\nwaitingForOff = (panicPressed || panicNeedsOff) && recording;\npanicBlocking = panicClearActive || waitingForOff;\ncaptureRunning = recording && !holdOn && !panicBlocking;\nclockStart = cleared || (recording && !wasRecording) ? 0 : captureClock;\nrecordSeconds = clockStart + (captureRunning ? 1.0 / samplerate : 0);\nout3 = recordSeconds;\ncaptureClock = recordSeconds;\nwasRecording = recording;\nrecA = panicBlocking ? 0 : captureA + control * ((group == 1 || group == 3) - captureA);\nrecB = panicBlocking ? 0 : captureB + control * ((group == 2 || group == 3) - captureB);\ninjectA = recA * (1 - holdMix);\ninjectB = recB * (1 - holdMix);\n// Feedback is linear below and at unity, with linked build above it.\nregen = feedbackState + control * (clamp(mod_feedback, 0, 1.10) - feedbackState);\neffectiveRegen = regen + holdMix * (1 - regen);\ncrossfeed = ((blurState) + (control) * ((clamp(mod_blur, 0, 1)) - (blurState)));\nmotion = ((driftState) + (control) * ((clamp(mod_drift, 0, 1)) - (driftState)));\nblend = ((mixState) + (control) * ((clamp(mix, 0, 1)) - (mixState)));\nsaturation = ((driveState) + (control) * ((clamp(mod_drive, 0, 1)) - (driveState)));\ncharacter = ((dynamicsState) + (control) * ((clamp(mod_dynamics, -1, 1)) - (dynamicsState)));\neraseSmoothed = eraseState + control * ((erase >= 0.5) - eraseState);\nerasing = panicBlocking ? 0 : eraseSmoothed * (1 - holdMix);\ngainIn = ((inputGain) + (control) * ((pow(10, clamp(mod_input_db, -24, 12) * 0.05)) - (inputGain)));\ngainOut = ((outputGain) + (control) * ((pow(10, clamp(mod_output_db, -24, 6) * 0.05)) - (outputGain)));\n\n// Sum input to both banks when Mono is enabled; leave the wet image stereo.\nsourceL = clamp(fixnan(in1), -8, 8);\nsourceR = clamp(fixnan(in2), -8, 8);\nmonoSignal = 0.5 * (sourceL + sourceR);\nmonoBlend = monoAmount + control * ((mono_input >= 0.5) - monoAmount);\nmonoAmount = monoBlend;\nrawL = (sourceL + monoBlend * (monoSignal - sourceL)) * gainIn;\nrawR = (sourceR + monoBlend * (monoSignal - sourceR)) * gainIn;\n\n// A linked input gate keeps low-level noise out of memory. The dry stays open.\ncleanL = dcblock(rawL);\ncleanR = dcblock(rawR);\ngateMode = round(clamp(input_gate, 0, 2));\ngateThreshold = gateMode == 2 ? 0.0001 : 0.001;\ngatePeak = max(abs(cleanL), abs(cleanR));\ngateRelease = 1 - exp(-1 / (0.075 * samplerate));\ndetectorGain = max(gatePeak, gateEnvelope + gateRelease * (gatePeak - gateEnvelope));\ngateEnvelope = detectorGain;\ngateTarget = gateMode == 0 ? 1 : clamp(2 * detectorGain / gateThreshold - 1, 0, 1);\ngateSlew = gateTarget > gateGain ? 1 - exp(-1 / (0.0005 * samplerate)) : gateRelease;\ngateOpen = gateGain + gateSlew * (gateTarget - gateGain);\ngateGain = gateOpen;\ninputL = cleanL * gateOpen;\ninputR = cleanR * gateOpen;\n// Lower the saturation knee with Drive and preserve unity small-signal gain.\ndriveKnee = 0.82 - 0.58 * saturation;\ninjectedL = ((inputL) + (saturation) * ((driveKnee * tanh(inputL / driveKnee)) - (inputL)));\ninjectedR = ((inputR) + (saturation) * ((driveKnee * tanh(inputR / driveKnee)) - (inputR)));\nattack = 1 - exp(-1 / (0.008 * samplerate));\nrelease = 1 - exp(-1 / (0.350 * samplerate));\ninputDetect = max(abs(inputL) * injectA, abs(inputR) * injectB);\nenv = ((inputEnvelope) + (inputDetect > inputEnvelope ? attack : release) * ((inputDetect) - (inputEnvelope)));\nsuppress = max(-character, 0) * clamp(4 * env, 0, 1) * (1 - holdMix);\nmemoryGain = (1 - 0.97 * suppress) * (1 - erasing);\n\n// The tone controls filter only the circulating signal. Each Off\n// position crossfades back to a true bypass.\n// Tab positions Off and 1\u20133 retain their old meaning. Sweep uses\n// the smoothed cutoff coefficients below, with host-rate headroom.\nhpSetting = round(clamp(hpf, 0, 4));\nlpSetting = round(clamp(lpf, 0, 4));\nhighOverride = hpSetting == 4;\nlowOverride = lpSetting == 4;\nhighPresetCut = hpSetting < 2 ? 65 : hpSetting == 2 ? 180 : 420;\nlowPresetCut = lpSetting < 2 ? 5600 : lpSetting == 2 ? 2800 : 1100;\nhighCut = highOverride ? min(samplerate * 0.45, clamp(mod_hpf_hz, 20, 2000)) : highPresetCut;\nlowCut = lowOverride ? min(samplerate * 0.45, clamp(mod_lpf_hz, 200, 20000)) : lowPresetCut;\nhighCoefficient = ((highState) + (control) * ((1 - exp(-twoPi * highCut / samplerate)) - (highState)));\nhighAmount = ((highMix) + (control) * ((hpSetting != 0) - (highMix)));\nlowCoefficient = lowState + control * ((1 - exp(-twoPi * lowCut / samplerate)) - lowState);\nlowAmount = lowMix + control * ((lpSetting != 0) - lowMix);\nloopHighAmount = highAmount * (1 - holdMix);\nloopLowAmount = lowAmount * (1 - holdMix);\n// Keep each lane\u2019s filter history explicit for older Gen compilers.\nnextToneHighA = cleared ? 0 : ((toneHighA) + (highCoefficient) * ((returnA) - (toneHighA)));\nhighPassedA = returnA - nextToneHighA * loopHighAmount;\nnextToneLowA = cleared ? 0 : toneLowA + lowCoefficient * (highPassedA - toneLowA);\ntoneA = cleared ? 0 : highPassedA + loopLowAmount * (nextToneLowA - highPassedA);\ntoneHighA = nextToneHighA;\ntoneLowA = nextToneLowA;\nnextToneHighB = cleared ? 0 : ((toneHighB) + (highCoefficient) * ((returnB) - (toneHighB)));\nhighPassedB = returnB - nextToneHighB * loopHighAmount;\nnextToneLowB = cleared ? 0 : toneLowB + lowCoefficient * (highPassedB - toneLowB);\ntoneB = cleared ? 0 : highPassedB + loopLowAmount * (nextToneLowB - highPassedB);\ntoneHighB = nextToneHighB;\ntoneLowB = nextToneLowB;\nnextToneHighC = cleared ? 0 : ((toneHighC) + (highCoefficient) * ((returnC) - (toneHighC)));\nhighPassedC = returnC - nextToneHighC * loopHighAmount;\nnextToneLowC = cleared ? 0 : toneLowC + lowCoefficient * (highPassedC - toneLowC);\ntoneC = cleared ? 0 : highPassedC + loopLowAmount * (nextToneLowC - highPassedC);\ntoneHighC = nextToneHighC;\ntoneLowC = nextToneLowC;\nnextToneHighD = cleared ? 0 : ((toneHighD) + (highCoefficient) * ((returnD) - (toneHighD)));\nhighPassedD = returnD - nextToneHighD * loopHighAmount;\nnextToneLowD = cleared ? 0 : toneLowD + lowCoefficient * (highPassedD - toneLowD);\ntoneD = cleared ? 0 : highPassedD + loopLowAmount * (nextToneLowD - highPassedD);\ntoneHighD = nextToneHighD;\ntoneLowD = nextToneLowD;\n\n// Pair rotation is orthogonal. Four uses a second orthogonal rotation\n// between pairs. Reverb substitutes a normalized four-line Hadamard.\nfourWeight = ((oldMode == 1) + (amount) * ((newMode == 1) - (oldMode == 1)));\nreverbWeight = ((oldMode == 2) + (amount) * ((newMode == 2) - (oldMode == 2)));\ndelayWeight = ((oldMode < 2) + (amount) * ((newMode < 2) - (oldMode < 2)));\nangle = crossfeed * delayWeight * 1.047197551196598;\nself = cos(angle);\ncross = sin(angle);\npairA = self * toneA + cross * toneB;\npairB = self * toneB - cross * toneA;\npairC = self * toneC + cross * toneD;\npairD = self * toneD - cross * toneC;\npairAngle = angle * fourWeight * 0.65;\npairSelf = cos(pairAngle);\npairCross = sin(pairAngle);\nnetworkA = ((pairSelf * pairA + pairCross * pairC) + (reverbWeight) * (((toneA + toneB + toneC + toneD) * 0.5) - (pairSelf * pairA + pairCross * pairC)));\nnetworkB = ((pairSelf * pairB + pairCross * pairD) + (reverbWeight) * (((toneA - toneB + toneC - toneD) * 0.5) - (pairSelf * pairB + pairCross * pairD)));\nnetworkC = ((pairSelf * pairC - pairCross * pairA) + (reverbWeight) * (((toneA + toneB - toneC - toneD) * 0.5) - (pairSelf * pairC - pairCross * pairA)));\nnetworkD = ((pairSelf * pairD - pairCross * pairB) + (reverbWeight) * (((toneA - toneB - toneC + toneD) * 0.5) - (pairSelf * pairD - pairCross * pairB)));\n\n// Erase follows the fixed feedback position in either direction.\nif (ambientRuns && !rhythmSelected && erasing > 0.0001) {\n    keep = 1 - erasing;\n    eraseBehindA = travel >= newA + 2 + 0.5 * handoff;\n    eraseTurnHeadA = travel >= 0.5 * handoff && !eraseBehindA;\n    eraseDistanceA = eraseTurnHeadA ? max(1, 1 - (newATap - newA)) : eraseBehindA ? newATap : max(1, 2 * newA - newATap);\n    eraseA = wrap(writeHead + (eraseBehindA ? -direction : direction) * round(eraseDistanceA), 0, capacity);\n    erasedSampleA = keep * peek(tape, eraseA, 0);\n    poke(tape, erasedSampleA, eraseA, 0);\n    eraseBehindB = travel >= newB + 2 + 0.5 * handoff;\n    eraseTurnHeadB = travel >= 0.5 * handoff && !eraseBehindB;\n    eraseDistanceB = eraseTurnHeadB ? max(1, 1 - (newBTap - newB)) : eraseBehindB ? newBTap : max(1, 2 * newB - newBTap);\n    eraseB = wrap(writeHead + (eraseBehindB ? -direction : direction) * round(eraseDistanceB), 0, capacity);\n    erasedSampleB = keep * peek(tape, eraseB, 1);\n    poke(tape, erasedSampleB, eraseB, 1);\n    eraseBehindC = travel >= newC + 2 + 0.5 * handoff;\n    eraseTurnHeadC = travel >= 0.5 * handoff && !eraseBehindC;\n    eraseDistanceC = eraseTurnHeadC ? max(1, 1 - (newCTap - newC)) : eraseBehindC ? newCTap : max(1, 2 * newC - newCTap);\n    eraseC = wrap(writeHead + (eraseBehindC ? -direction : direction) * round(eraseDistanceC), 0, capacity);\n    erasedSampleC = keep * peek(tape, eraseC, 2);\n    poke(tape, erasedSampleC, eraseC, 2);\n    eraseBehindD = travel >= newD + 2 + 0.5 * handoff;\n    eraseTurnHeadD = travel >= 0.5 * handoff && !eraseBehindD;\n    eraseDistanceD = eraseTurnHeadD ? max(1, 1 - (newDTap - newD)) : eraseBehindD ? newDTap : max(1, 2 * newD - newDTap);\n    eraseD = wrap(writeHead + (eraseBehindD ? -direction : direction) * round(eraseDistanceD), 0, capacity);\n    erasedSampleD = keep * peek(tape, eraseD, 3);\n    poke(tape, erasedSampleD, eraseD, 3);\n}\n// The feedback-only vector has a smooth equilibrium at norm 0.62\n// above unity. A single gain preserves each lane's relative level,\n// and leaves headroom below the tape write limiter for new input.\nfeedbackPower = networkA * networkA + networkB * networkB\n              + networkC * networkC + networkD * networkD;\nbuildExcess = max(0, effectiveRegen - 1);\nregenGain = effectiveRegen * memoryGain / (1 + buildExcess * feedbackPower / (0.62 * 0.62));\nwriteARaw = clamp(fixnan(0.67 * (rhythmSelected ? 0 : injectA) * injectedL + regenGain * networkA), -16, 16);\nwriteAMag = abs(writeARaw);\nwriteAKnee = max(0, writeAMag - 0.75);\nwriteA = sign(writeARaw) * (min(writeAMag, 0.75) + 0.21 * tanh(writeAKnee / 0.21));\nif (ambientRuns) {\n    poke(tape, writeA, writeIndex, 0);\n}\nwriteBRaw = clamp(fixnan(0.67 * (rhythmSelected ? 0 : injectB) * injectedR + regenGain * networkB), -16, 16);\nwriteBMag = abs(writeBRaw);\nwriteBKnee = max(0, writeBMag - 0.75);\nwriteB = sign(writeBRaw) * (min(writeBMag, 0.75) + 0.21 * tanh(writeBKnee / 0.21));\nif (ambientRuns) {\n    poke(tape, writeB, writeIndex, 1);\n}\nwriteCRaw = clamp(fixnan(0.52 * (rhythmSelected ? 0 : injectA) * injectedL + regenGain * networkC), -16, 16);\nwriteCMag = abs(writeCRaw);\nwriteCKnee = max(0, writeCMag - 0.75);\nwriteC = sign(writeCRaw) * (min(writeCMag, 0.75) + 0.21 * tanh(writeCKnee / 0.21));\nif (ambientRuns) {\n    poke(tape, writeC, writeIndex, 2);\n}\nwriteDRaw = clamp(fixnan(0.52 * (rhythmSelected ? 0 : injectB) * injectedR + regenGain * networkD), -16, 16);\nwriteDMag = abs(writeDRaw);\nwriteDKnee = max(0, writeDMag - 0.75);\nwriteD = sign(writeDRaw) * (min(writeDMag, 0.75) + 0.21 * tanh(writeDKnee / 0.21));\nif (ambientRuns) {\n    poke(tape, writeD, writeIndex, 3);\n}\n\n// Render the old and new wet read heads for each lane.\n\noldWetASpeedCode = floor((oldConfig + 0.5) / 12.0);\noldWetAProgram = oldConfig - 12 * oldWetASpeedCode;\noldWetAFamily = floor((oldWetAProgram + 0.5) / 3.0);\noldWetASizeCode = oldWetAProgram - 3 * oldWetAFamily;\noldWetAForwardRate = pitchRatio * (oldWetASpeedCode == 0 || oldWetAFamily >= 2 ? 1 : 0.5);\noldWetAReverseMix = direction < 0 ? clamp((travel - oldA - 2 - handoff) / handoff, 0, 1) : 0;\noldWetARate = oldWetAReverseMix > 0 ? -oldWetAForwardRate : oldWetAForwardRate;\noldWetAGranular = oldWetAFamily == 3;\noldWetALength = dim(tape);\noldWetA = 0;\nif (!oldWetAGranular && oldWetARate == 1) {\n    oldWetA = readTransport(tape, writeHead, direction, travel, oldATap, oldA, handoff, firstWritten, writtenSpan, 0);\n} else {\n    oldWetAWindow = oldWetAGranular ? (oldWetASizeCode == 0 ? 0.087 : oldWetASizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    oldWetAWindow = (oldWetAReverseMix > 0 ? clamp(0.30 * oldA / samplerate, 0.35, 1.25) : oldWetAWindow) * (1 + 0.113 * 0);\n    oldWetAFrames = oldWetAWindow * samplerate;\n    oldWetAPositionA = grainClock / oldWetAWindow + 0 * 0.217;\n    oldWetAPositionB = oldWetAPositionA + 0.5;\n    oldWetAGrainA = floor(oldWetAPositionA);\n    oldWetAGrainB = floor(oldWetAPositionB);\n    oldWetAPhaseA = oldWetAPositionA - oldWetAGrainA;\n    oldWetAPhaseB = oldWetAPositionB - oldWetAGrainB;\n    // Indexed scatter lets matching oldWetAProgram readers agree at oldWetAA handoff.\n    oldWetASeedA = (oldWetAGrainA + 1 + 142 * 0) * 12.9898;\n    oldWetASeedB = (oldWetAGrainB + 72 + 142 * 0) * 12.9898;\n    oldWetAScatterDepth = oldWetAGranular * crossfeed * oldWetAFrames * 0.71;\n    oldWetADriftDepth = oldWetAGranular * motion * oldWetAFrames * 0.69;\n    oldWetAFrequency = 0.397 + 0.087 * 0;\n    oldWetAScatterA = (2 * wrap(sin(oldWetASeedA) * 43758.5453, 0, 1) - 1) * oldWetAScatterDepth;\n    oldWetAScatterB = (2 * wrap(sin(oldWetASeedB) * 43758.5453, 0, 1) - 1) * oldWetAScatterDepth;\n    oldWetADriftA = (0.63 * sin(oldWetAGrainA * oldWetAWindow * oldWetAFrequency + 2 * 0) + 0.37 * (2 * slowA - 1)) * oldWetADriftDepth;\n    oldWetADriftB = (0.63 * sin(oldWetAGrainB * oldWetAWindow * oldWetAFrequency + 2 * 0 + 1) + 0.37 * (2 * slowB - 1)) * oldWetADriftDepth;\n    oldWetASpacing = oldWetAGranular * oldWetAFrames * 0.71;\n    oldWetAShift = (1 - oldWetARate) * oldWetAFrames;\n    oldWetADistanceA = clamp(oldATap + oldWetAShift * (oldWetAPhaseA - 0.5) + oldWetAScatterA + oldWetADriftA - oldWetASpacing, 2, oldWetALength - 2);\n    oldWetADistanceB = clamp(oldATap + oldWetAShift * (oldWetAPhaseB - 0.5) + oldWetAScatterB + oldWetADriftB + oldWetASpacing, 2, oldWetALength - 2);\n    oldWetAA = readTransport(tape, writeHead, direction, travel, oldWetADistanceA, oldA, handoff, firstWritten, writtenSpan, 0);\n    oldWetAB = readTransport(tape, writeHead, direction, travel, oldWetADistanceB, oldA, handoff, firstWritten, writtenSpan, 0);\n    oldWetAWeightA = 0.5 - 0.5 * cos(6.283185307179586 * oldWetAPhaseA);\n    oldWetA = oldWetAA * oldWetAWeightA + oldWetAB * (1 - oldWetAWeightA);\n    if (oldWetAReverseMix > 0 && oldWetAReverseMix < 1) {\n        oldWetADirect = readTransport(tape, writeHead, direction, travel, oldATap, oldA, handoff, firstWritten, writtenSpan, 0);\n        oldWetA = oldWetADirect + oldWetAReverseMix * (oldWetA - oldWetADirect);\n    }\n}\n\nnewWetASpeedCode = floor((newConfig + 0.5) / 12.0);\nnewWetAProgram = newConfig - 12 * newWetASpeedCode;\nnewWetAFamily = floor((newWetAProgram + 0.5) / 3.0);\nnewWetASizeCode = newWetAProgram - 3 * newWetAFamily;\nnewWetAForwardRate = pitchRatio * (newWetASpeedCode == 0 || newWetAFamily >= 2 ? 1 : 0.5);\nnewWetAReverseMix = direction < 0 ? clamp((travel - newA - 2 - handoff) / handoff, 0, 1) : 0;\nnewWetARate = newWetAReverseMix > 0 ? -newWetAForwardRate : newWetAForwardRate;\nnewWetAGranular = newWetAFamily == 3;\nnewWetALength = dim(tape);\nnewWetA = 0;\nif (!newWetAGranular && newWetARate == 1) {\n    newWetA = readTransport(tape, writeHead, direction, travel, newATap, newA, handoff, firstWritten, writtenSpan, 0);\n} else {\n    newWetAWindow = newWetAGranular ? (newWetASizeCode == 0 ? 0.087 : newWetASizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    newWetAWindow = (newWetAReverseMix > 0 ? clamp(0.30 * newA / samplerate, 0.35, 1.25) : newWetAWindow) * (1 + 0.113 * 0);\n    newWetAFrames = newWetAWindow * samplerate;\n    newWetAPositionA = grainClock / newWetAWindow + 0 * 0.217;\n    newWetAPositionB = newWetAPositionA + 0.5;\n    newWetAGrainA = floor(newWetAPositionA);\n    newWetAGrainB = floor(newWetAPositionB);\n    newWetAPhaseA = newWetAPositionA - newWetAGrainA;\n    newWetAPhaseB = newWetAPositionB - newWetAGrainB;\n    // Indexed scatter lets matching newWetAProgram readers agree at newWetAA handoff.\n    newWetASeedA = (newWetAGrainA + 1 + 142 * 0) * 12.9898;\n    newWetASeedB = (newWetAGrainB + 72 + 142 * 0) * 12.9898;\n    newWetAScatterDepth = newWetAGranular * crossfeed * newWetAFrames * 0.71;\n    newWetADriftDepth = newWetAGranular * motion * newWetAFrames * 0.69;\n    newWetAFrequency = 0.397 + 0.087 * 0;\n    newWetAScatterA = (2 * wrap(sin(newWetASeedA) * 43758.5453, 0, 1) - 1) * newWetAScatterDepth;\n    newWetAScatterB = (2 * wrap(sin(newWetASeedB) * 43758.5453, 0, 1) - 1) * newWetAScatterDepth;\n    newWetADriftA = (0.63 * sin(newWetAGrainA * newWetAWindow * newWetAFrequency + 2 * 0) + 0.37 * (2 * slowA - 1)) * newWetADriftDepth;\n    newWetADriftB = (0.63 * sin(newWetAGrainB * newWetAWindow * newWetAFrequency + 2 * 0 + 1) + 0.37 * (2 * slowB - 1)) * newWetADriftDepth;\n    newWetASpacing = newWetAGranular * newWetAFrames * 0.71;\n    newWetAShift = (1 - newWetARate) * newWetAFrames;\n    newWetADistanceA = clamp(newATap + newWetAShift * (newWetAPhaseA - 0.5) + newWetAScatterA + newWetADriftA - newWetASpacing, 2, newWetALength - 2);\n    newWetADistanceB = clamp(newATap + newWetAShift * (newWetAPhaseB - 0.5) + newWetAScatterB + newWetADriftB + newWetASpacing, 2, newWetALength - 2);\n    newWetAA = readTransport(tape, writeHead, direction, travel, newWetADistanceA, newA, handoff, firstWritten, writtenSpan, 0);\n    newWetAB = readTransport(tape, writeHead, direction, travel, newWetADistanceB, newA, handoff, firstWritten, writtenSpan, 0);\n    newWetAWeightA = 0.5 - 0.5 * cos(6.283185307179586 * newWetAPhaseA);\n    newWetA = newWetAA * newWetAWeightA + newWetAB * (1 - newWetAWeightA);\n    if (newWetAReverseMix > 0 && newWetAReverseMix < 1) {\n        newWetADirect = readTransport(tape, writeHead, direction, travel, newATap, newA, handoff, firstWritten, writtenSpan, 0);\n        newWetA = newWetADirect + newWetAReverseMix * (newWetA - newWetADirect);\n    }\n}\n\nplayA = ((oldWetA) + (amount) * ((newWetA) - (oldWetA)));\n\noldWetBSpeedCode = floor((oldConfig + 0.5) / 12.0);\noldWetBProgram = oldConfig - 12 * oldWetBSpeedCode;\noldWetBFamily = floor((oldWetBProgram + 0.5) / 3.0);\noldWetBSizeCode = oldWetBProgram - 3 * oldWetBFamily;\noldWetBForwardRate = pitchRatio * (oldWetBSpeedCode == 0 || oldWetBFamily >= 2 ? 1 : 0.5);\noldWetBReverseMix = direction < 0 ? clamp((travel - oldB - 2 - handoff) / handoff, 0, 1) : 0;\noldWetBRate = oldWetBReverseMix > 0 ? -oldWetBForwardRate : oldWetBForwardRate;\noldWetBGranular = oldWetBFamily == 3;\noldWetBLength = dim(tape);\noldWetB = 0;\nif (!oldWetBGranular && oldWetBRate == 1) {\n    oldWetB = readTransport(tape, writeHead, direction, travel, oldBTap, oldB, handoff, firstWritten, writtenSpan, 1);\n} else {\n    oldWetBWindow = oldWetBGranular ? (oldWetBSizeCode == 0 ? 0.087 : oldWetBSizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    oldWetBWindow = (oldWetBReverseMix > 0 ? clamp(0.30 * oldB / samplerate, 0.35, 1.25) : oldWetBWindow) * (1 + 0.113 * 1);\n    oldWetBFrames = oldWetBWindow * samplerate;\n    oldWetBPositionA = grainClock / oldWetBWindow + 1 * 0.217;\n    oldWetBPositionB = oldWetBPositionA + 0.5;\n    oldWetBGrainA = floor(oldWetBPositionA);\n    oldWetBGrainB = floor(oldWetBPositionB);\n    oldWetBPhaseA = oldWetBPositionA - oldWetBGrainA;\n    oldWetBPhaseB = oldWetBPositionB - oldWetBGrainB;\n    // Indexed scatter lets matching oldWetBProgram readers agree at oldWetBA handoff.\n    oldWetBSeedA = (oldWetBGrainA + 1 + 142 * 1) * 12.9898;\n    oldWetBSeedB = (oldWetBGrainB + 72 + 142 * 1) * 12.9898;\n    oldWetBScatterDepth = oldWetBGranular * crossfeed * oldWetBFrames * 0.71;\n    oldWetBDriftDepth = oldWetBGranular * motion * oldWetBFrames * 0.69;\n    oldWetBFrequency = 0.397 + 0.087 * 1;\n    oldWetBScatterA = (2 * wrap(sin(oldWetBSeedA) * 43758.5453, 0, 1) - 1) * oldWetBScatterDepth;\n    oldWetBScatterB = (2 * wrap(sin(oldWetBSeedB) * 43758.5453, 0, 1) - 1) * oldWetBScatterDepth;\n    oldWetBDriftA = (0.63 * sin(oldWetBGrainA * oldWetBWindow * oldWetBFrequency + 2 * 1) + 0.37 * (2 * slowA - 1)) * oldWetBDriftDepth;\n    oldWetBDriftB = (0.63 * sin(oldWetBGrainB * oldWetBWindow * oldWetBFrequency + 2 * 1 + 1) + 0.37 * (2 * slowB - 1)) * oldWetBDriftDepth;\n    oldWetBSpacing = oldWetBGranular * oldWetBFrames * 0.71;\n    oldWetBShift = (1 - oldWetBRate) * oldWetBFrames;\n    oldWetBDistanceA = clamp(oldBTap + oldWetBShift * (oldWetBPhaseA - 0.5) + oldWetBScatterA + oldWetBDriftA - oldWetBSpacing, 2, oldWetBLength - 2);\n    oldWetBDistanceB = clamp(oldBTap + oldWetBShift * (oldWetBPhaseB - 0.5) + oldWetBScatterB + oldWetBDriftB + oldWetBSpacing, 2, oldWetBLength - 2);\n    oldWetBA = readTransport(tape, writeHead, direction, travel, oldWetBDistanceA, oldB, handoff, firstWritten, writtenSpan, 1);\n    oldWetBB = readTransport(tape, writeHead, direction, travel, oldWetBDistanceB, oldB, handoff, firstWritten, writtenSpan, 1);\n    oldWetBWeightA = 0.5 - 0.5 * cos(6.283185307179586 * oldWetBPhaseA);\n    oldWetB = oldWetBA * oldWetBWeightA + oldWetBB * (1 - oldWetBWeightA);\n    if (oldWetBReverseMix > 0 && oldWetBReverseMix < 1) {\n        oldWetBDirect = readTransport(tape, writeHead, direction, travel, oldBTap, oldB, handoff, firstWritten, writtenSpan, 1);\n        oldWetB = oldWetBDirect + oldWetBReverseMix * (oldWetB - oldWetBDirect);\n    }\n}\n\nnewWetBSpeedCode = floor((newConfig + 0.5) / 12.0);\nnewWetBProgram = newConfig - 12 * newWetBSpeedCode;\nnewWetBFamily = floor((newWetBProgram + 0.5) / 3.0);\nnewWetBSizeCode = newWetBProgram - 3 * newWetBFamily;\nnewWetBForwardRate = pitchRatio * (newWetBSpeedCode == 0 || newWetBFamily >= 2 ? 1 : 0.5);\nnewWetBReverseMix = direction < 0 ? clamp((travel - newB - 2 - handoff) / handoff, 0, 1) : 0;\nnewWetBRate = newWetBReverseMix > 0 ? -newWetBForwardRate : newWetBForwardRate;\nnewWetBGranular = newWetBFamily == 3;\nnewWetBLength = dim(tape);\nnewWetB = 0;\nif (!newWetBGranular && newWetBRate == 1) {\n    newWetB = readTransport(tape, writeHead, direction, travel, newBTap, newB, handoff, firstWritten, writtenSpan, 1);\n} else {\n    newWetBWindow = newWetBGranular ? (newWetBSizeCode == 0 ? 0.087 : newWetBSizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    newWetBWindow = (newWetBReverseMix > 0 ? clamp(0.30 * newB / samplerate, 0.35, 1.25) : newWetBWindow) * (1 + 0.113 * 1);\n    newWetBFrames = newWetBWindow * samplerate;\n    newWetBPositionA = grainClock / newWetBWindow + 1 * 0.217;\n    newWetBPositionB = newWetBPositionA + 0.5;\n    newWetBGrainA = floor(newWetBPositionA);\n    newWetBGrainB = floor(newWetBPositionB);\n    newWetBPhaseA = newWetBPositionA - newWetBGrainA;\n    newWetBPhaseB = newWetBPositionB - newWetBGrainB;\n    // Indexed scatter lets matching newWetBProgram readers agree at newWetBA handoff.\n    newWetBSeedA = (newWetBGrainA + 1 + 142 * 1) * 12.9898;\n    newWetBSeedB = (newWetBGrainB + 72 + 142 * 1) * 12.9898;\n    newWetBScatterDepth = newWetBGranular * crossfeed * newWetBFrames * 0.71;\n    newWetBDriftDepth = newWetBGranular * motion * newWetBFrames * 0.69;\n    newWetBFrequency = 0.397 + 0.087 * 1;\n    newWetBScatterA = (2 * wrap(sin(newWetBSeedA) * 43758.5453, 0, 1) - 1) * newWetBScatterDepth;\n    newWetBScatterB = (2 * wrap(sin(newWetBSeedB) * 43758.5453, 0, 1) - 1) * newWetBScatterDepth;\n    newWetBDriftA = (0.63 * sin(newWetBGrainA * newWetBWindow * newWetBFrequency + 2 * 1) + 0.37 * (2 * slowA - 1)) * newWetBDriftDepth;\n    newWetBDriftB = (0.63 * sin(newWetBGrainB * newWetBWindow * newWetBFrequency + 2 * 1 + 1) + 0.37 * (2 * slowB - 1)) * newWetBDriftDepth;\n    newWetBSpacing = newWetBGranular * newWetBFrames * 0.71;\n    newWetBShift = (1 - newWetBRate) * newWetBFrames;\n    newWetBDistanceA = clamp(newBTap + newWetBShift * (newWetBPhaseA - 0.5) + newWetBScatterA + newWetBDriftA - newWetBSpacing, 2, newWetBLength - 2);\n    newWetBDistanceB = clamp(newBTap + newWetBShift * (newWetBPhaseB - 0.5) + newWetBScatterB + newWetBDriftB + newWetBSpacing, 2, newWetBLength - 2);\n    newWetBA = readTransport(tape, writeHead, direction, travel, newWetBDistanceA, newB, handoff, firstWritten, writtenSpan, 1);\n    newWetBB = readTransport(tape, writeHead, direction, travel, newWetBDistanceB, newB, handoff, firstWritten, writtenSpan, 1);\n    newWetBWeightA = 0.5 - 0.5 * cos(6.283185307179586 * newWetBPhaseA);\n    newWetB = newWetBA * newWetBWeightA + newWetBB * (1 - newWetBWeightA);\n    if (newWetBReverseMix > 0 && newWetBReverseMix < 1) {\n        newWetBDirect = readTransport(tape, writeHead, direction, travel, newBTap, newB, handoff, firstWritten, writtenSpan, 1);\n        newWetB = newWetBDirect + newWetBReverseMix * (newWetB - newWetBDirect);\n    }\n}\n\nplayB = ((oldWetB) + (amount) * ((newWetB) - (oldWetB)));\n\noldWetCSpeedCode = floor((oldConfig + 0.5) / 12.0);\noldWetCProgram = oldConfig - 12 * oldWetCSpeedCode;\noldWetCFamily = floor((oldWetCProgram + 0.5) / 3.0);\noldWetCSizeCode = oldWetCProgram - 3 * oldWetCFamily;\noldWetCForwardRate = pitchRatio * (oldWetCSpeedCode == 0 || oldWetCFamily >= 2 ? 1 : 0.5);\noldWetCReverseMix = direction < 0 ? clamp((travel - oldC - 2 - handoff) / handoff, 0, 1) : 0;\noldWetCRate = oldWetCReverseMix > 0 ? -oldWetCForwardRate : oldWetCForwardRate;\noldWetCGranular = oldWetCFamily == 3;\noldWetCLength = dim(tape);\noldWetC = 0;\nif (!oldWetCGranular && oldWetCRate == 1) {\n    oldWetC = readTransport(tape, writeHead, direction, travel, oldCTap, oldC, handoff, firstWritten, writtenSpan, 2);\n} else {\n    oldWetCWindow = oldWetCGranular ? (oldWetCSizeCode == 0 ? 0.087 : oldWetCSizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    oldWetCWindow = (oldWetCReverseMix > 0 ? clamp(0.30 * oldC / samplerate, 0.35, 1.25) : oldWetCWindow) * (1 + 0.113 * 2);\n    oldWetCFrames = oldWetCWindow * samplerate;\n    oldWetCPositionA = grainClock / oldWetCWindow + 2 * 0.217;\n    oldWetCPositionB = oldWetCPositionA + 0.5;\n    oldWetCGrainA = floor(oldWetCPositionA);\n    oldWetCGrainB = floor(oldWetCPositionB);\n    oldWetCPhaseA = oldWetCPositionA - oldWetCGrainA;\n    oldWetCPhaseB = oldWetCPositionB - oldWetCGrainB;\n    // Indexed scatter lets matching oldWetCProgram readers agree at oldWetCA handoff.\n    oldWetCSeedA = (oldWetCGrainA + 1 + 142 * 2) * 12.9898;\n    oldWetCSeedB = (oldWetCGrainB + 72 + 142 * 2) * 12.9898;\n    oldWetCScatterDepth = oldWetCGranular * crossfeed * oldWetCFrames * 0.71;\n    oldWetCDriftDepth = oldWetCGranular * motion * oldWetCFrames * 0.69;\n    oldWetCFrequency = 0.397 + 0.087 * 2;\n    oldWetCScatterA = (2 * wrap(sin(oldWetCSeedA) * 43758.5453, 0, 1) - 1) * oldWetCScatterDepth;\n    oldWetCScatterB = (2 * wrap(sin(oldWetCSeedB) * 43758.5453, 0, 1) - 1) * oldWetCScatterDepth;\n    oldWetCDriftA = (0.63 * sin(oldWetCGrainA * oldWetCWindow * oldWetCFrequency + 2 * 2) + 0.37 * (2 * slowA - 1)) * oldWetCDriftDepth;\n    oldWetCDriftB = (0.63 * sin(oldWetCGrainB * oldWetCWindow * oldWetCFrequency + 2 * 2 + 1) + 0.37 * (2 * slowB - 1)) * oldWetCDriftDepth;\n    oldWetCSpacing = oldWetCGranular * oldWetCFrames * 0.71;\n    oldWetCShift = (1 - oldWetCRate) * oldWetCFrames;\n    oldWetCDistanceA = clamp(oldCTap + oldWetCShift * (oldWetCPhaseA - 0.5) + oldWetCScatterA + oldWetCDriftA - oldWetCSpacing, 2, oldWetCLength - 2);\n    oldWetCDistanceB = clamp(oldCTap + oldWetCShift * (oldWetCPhaseB - 0.5) + oldWetCScatterB + oldWetCDriftB + oldWetCSpacing, 2, oldWetCLength - 2);\n    oldWetCA = readTransport(tape, writeHead, direction, travel, oldWetCDistanceA, oldC, handoff, firstWritten, writtenSpan, 2);\n    oldWetCB = readTransport(tape, writeHead, direction, travel, oldWetCDistanceB, oldC, handoff, firstWritten, writtenSpan, 2);\n    oldWetCWeightA = 0.5 - 0.5 * cos(6.283185307179586 * oldWetCPhaseA);\n    oldWetC = oldWetCA * oldWetCWeightA + oldWetCB * (1 - oldWetCWeightA);\n    if (oldWetCReverseMix > 0 && oldWetCReverseMix < 1) {\n        oldWetCDirect = readTransport(tape, writeHead, direction, travel, oldCTap, oldC, handoff, firstWritten, writtenSpan, 2);\n        oldWetC = oldWetCDirect + oldWetCReverseMix * (oldWetC - oldWetCDirect);\n    }\n}\n\nnewWetCSpeedCode = floor((newConfig + 0.5) / 12.0);\nnewWetCProgram = newConfig - 12 * newWetCSpeedCode;\nnewWetCFamily = floor((newWetCProgram + 0.5) / 3.0);\nnewWetCSizeCode = newWetCProgram - 3 * newWetCFamily;\nnewWetCForwardRate = pitchRatio * (newWetCSpeedCode == 0 || newWetCFamily >= 2 ? 1 : 0.5);\nnewWetCReverseMix = direction < 0 ? clamp((travel - newC - 2 - handoff) / handoff, 0, 1) : 0;\nnewWetCRate = newWetCReverseMix > 0 ? -newWetCForwardRate : newWetCForwardRate;\nnewWetCGranular = newWetCFamily == 3;\nnewWetCLength = dim(tape);\nnewWetC = 0;\nif (!newWetCGranular && newWetCRate == 1) {\n    newWetC = readTransport(tape, writeHead, direction, travel, newCTap, newC, handoff, firstWritten, writtenSpan, 2);\n} else {\n    newWetCWindow = newWetCGranular ? (newWetCSizeCode == 0 ? 0.087 : newWetCSizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    newWetCWindow = (newWetCReverseMix > 0 ? clamp(0.30 * newC / samplerate, 0.35, 1.25) : newWetCWindow) * (1 + 0.113 * 2);\n    newWetCFrames = newWetCWindow * samplerate;\n    newWetCPositionA = grainClock / newWetCWindow + 2 * 0.217;\n    newWetCPositionB = newWetCPositionA + 0.5;\n    newWetCGrainA = floor(newWetCPositionA);\n    newWetCGrainB = floor(newWetCPositionB);\n    newWetCPhaseA = newWetCPositionA - newWetCGrainA;\n    newWetCPhaseB = newWetCPositionB - newWetCGrainB;\n    // Indexed scatter lets matching newWetCProgram readers agree at newWetCA handoff.\n    newWetCSeedA = (newWetCGrainA + 1 + 142 * 2) * 12.9898;\n    newWetCSeedB = (newWetCGrainB + 72 + 142 * 2) * 12.9898;\n    newWetCScatterDepth = newWetCGranular * crossfeed * newWetCFrames * 0.71;\n    newWetCDriftDepth = newWetCGranular * motion * newWetCFrames * 0.69;\n    newWetCFrequency = 0.397 + 0.087 * 2;\n    newWetCScatterA = (2 * wrap(sin(newWetCSeedA) * 43758.5453, 0, 1) - 1) * newWetCScatterDepth;\n    newWetCScatterB = (2 * wrap(sin(newWetCSeedB) * 43758.5453, 0, 1) - 1) * newWetCScatterDepth;\n    newWetCDriftA = (0.63 * sin(newWetCGrainA * newWetCWindow * newWetCFrequency + 2 * 2) + 0.37 * (2 * slowA - 1)) * newWetCDriftDepth;\n    newWetCDriftB = (0.63 * sin(newWetCGrainB * newWetCWindow * newWetCFrequency + 2 * 2 + 1) + 0.37 * (2 * slowB - 1)) * newWetCDriftDepth;\n    newWetCSpacing = newWetCGranular * newWetCFrames * 0.71;\n    newWetCShift = (1 - newWetCRate) * newWetCFrames;\n    newWetCDistanceA = clamp(newCTap + newWetCShift * (newWetCPhaseA - 0.5) + newWetCScatterA + newWetCDriftA - newWetCSpacing, 2, newWetCLength - 2);\n    newWetCDistanceB = clamp(newCTap + newWetCShift * (newWetCPhaseB - 0.5) + newWetCScatterB + newWetCDriftB + newWetCSpacing, 2, newWetCLength - 2);\n    newWetCA = readTransport(tape, writeHead, direction, travel, newWetCDistanceA, newC, handoff, firstWritten, writtenSpan, 2);\n    newWetCB = readTransport(tape, writeHead, direction, travel, newWetCDistanceB, newC, handoff, firstWritten, writtenSpan, 2);\n    newWetCWeightA = 0.5 - 0.5 * cos(6.283185307179586 * newWetCPhaseA);\n    newWetC = newWetCA * newWetCWeightA + newWetCB * (1 - newWetCWeightA);\n    if (newWetCReverseMix > 0 && newWetCReverseMix < 1) {\n        newWetCDirect = readTransport(tape, writeHead, direction, travel, newCTap, newC, handoff, firstWritten, writtenSpan, 2);\n        newWetC = newWetCDirect + newWetCReverseMix * (newWetC - newWetCDirect);\n    }\n}\n\nplayC = ((oldWetC) + (amount) * ((newWetC) - (oldWetC)));\n\noldWetDSpeedCode = floor((oldConfig + 0.5) / 12.0);\noldWetDProgram = oldConfig - 12 * oldWetDSpeedCode;\noldWetDFamily = floor((oldWetDProgram + 0.5) / 3.0);\noldWetDSizeCode = oldWetDProgram - 3 * oldWetDFamily;\noldWetDForwardRate = pitchRatio * (oldWetDSpeedCode == 0 || oldWetDFamily >= 2 ? 1 : 0.5);\noldWetDReverseMix = direction < 0 ? clamp((travel - oldD - 2 - handoff) / handoff, 0, 1) : 0;\noldWetDRate = oldWetDReverseMix > 0 ? -oldWetDForwardRate : oldWetDForwardRate;\noldWetDGranular = oldWetDFamily == 3;\noldWetDLength = dim(tape);\noldWetD = 0;\nif (!oldWetDGranular && oldWetDRate == 1) {\n    oldWetD = readTransport(tape, writeHead, direction, travel, oldDTap, oldD, handoff, firstWritten, writtenSpan, 3);\n} else {\n    oldWetDWindow = oldWetDGranular ? (oldWetDSizeCode == 0 ? 0.087 : oldWetDSizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    oldWetDWindow = (oldWetDReverseMix > 0 ? clamp(0.30 * oldD / samplerate, 0.35, 1.25) : oldWetDWindow) * (1 + 0.113 * 3);\n    oldWetDFrames = oldWetDWindow * samplerate;\n    oldWetDPositionA = grainClock / oldWetDWindow + 3 * 0.217;\n    oldWetDPositionB = oldWetDPositionA + 0.5;\n    oldWetDGrainA = floor(oldWetDPositionA);\n    oldWetDGrainB = floor(oldWetDPositionB);\n    oldWetDPhaseA = oldWetDPositionA - oldWetDGrainA;\n    oldWetDPhaseB = oldWetDPositionB - oldWetDGrainB;\n    // Indexed scatter lets matching oldWetDProgram readers agree at oldWetDA handoff.\n    oldWetDSeedA = (oldWetDGrainA + 1 + 142 * 3) * 12.9898;\n    oldWetDSeedB = (oldWetDGrainB + 72 + 142 * 3) * 12.9898;\n    oldWetDScatterDepth = oldWetDGranular * crossfeed * oldWetDFrames * 0.71;\n    oldWetDDriftDepth = oldWetDGranular * motion * oldWetDFrames * 0.69;\n    oldWetDFrequency = 0.397 + 0.087 * 3;\n    oldWetDScatterA = (2 * wrap(sin(oldWetDSeedA) * 43758.5453, 0, 1) - 1) * oldWetDScatterDepth;\n    oldWetDScatterB = (2 * wrap(sin(oldWetDSeedB) * 43758.5453, 0, 1) - 1) * oldWetDScatterDepth;\n    oldWetDDriftA = (0.63 * sin(oldWetDGrainA * oldWetDWindow * oldWetDFrequency + 2 * 3) + 0.37 * (2 * slowA - 1)) * oldWetDDriftDepth;\n    oldWetDDriftB = (0.63 * sin(oldWetDGrainB * oldWetDWindow * oldWetDFrequency + 2 * 3 + 1) + 0.37 * (2 * slowB - 1)) * oldWetDDriftDepth;\n    oldWetDSpacing = oldWetDGranular * oldWetDFrames * 0.71;\n    oldWetDShift = (1 - oldWetDRate) * oldWetDFrames;\n    oldWetDDistanceA = clamp(oldDTap + oldWetDShift * (oldWetDPhaseA - 0.5) + oldWetDScatterA + oldWetDDriftA - oldWetDSpacing, 2, oldWetDLength - 2);\n    oldWetDDistanceB = clamp(oldDTap + oldWetDShift * (oldWetDPhaseB - 0.5) + oldWetDScatterB + oldWetDDriftB + oldWetDSpacing, 2, oldWetDLength - 2);\n    oldWetDA = readTransport(tape, writeHead, direction, travel, oldWetDDistanceA, oldD, handoff, firstWritten, writtenSpan, 3);\n    oldWetDB = readTransport(tape, writeHead, direction, travel, oldWetDDistanceB, oldD, handoff, firstWritten, writtenSpan, 3);\n    oldWetDWeightA = 0.5 - 0.5 * cos(6.283185307179586 * oldWetDPhaseA);\n    oldWetD = oldWetDA * oldWetDWeightA + oldWetDB * (1 - oldWetDWeightA);\n    if (oldWetDReverseMix > 0 && oldWetDReverseMix < 1) {\n        oldWetDDirect = readTransport(tape, writeHead, direction, travel, oldDTap, oldD, handoff, firstWritten, writtenSpan, 3);\n        oldWetD = oldWetDDirect + oldWetDReverseMix * (oldWetD - oldWetDDirect);\n    }\n}\n\nnewWetDSpeedCode = floor((newConfig + 0.5) / 12.0);\nnewWetDProgram = newConfig - 12 * newWetDSpeedCode;\nnewWetDFamily = floor((newWetDProgram + 0.5) / 3.0);\nnewWetDSizeCode = newWetDProgram - 3 * newWetDFamily;\nnewWetDForwardRate = pitchRatio * (newWetDSpeedCode == 0 || newWetDFamily >= 2 ? 1 : 0.5);\nnewWetDReverseMix = direction < 0 ? clamp((travel - newD - 2 - handoff) / handoff, 0, 1) : 0;\nnewWetDRate = newWetDReverseMix > 0 ? -newWetDForwardRate : newWetDForwardRate;\nnewWetDGranular = newWetDFamily == 3;\nnewWetDLength = dim(tape);\nnewWetD = 0;\nif (!newWetDGranular && newWetDRate == 1) {\n    newWetD = readTransport(tape, writeHead, direction, travel, newDTap, newD, handoff, firstWritten, writtenSpan, 3);\n} else {\n    newWetDWindow = newWetDGranular ? (newWetDSizeCode == 0 ? 0.087 : newWetDSizeCode == 1 ? 0.177 : 0.347) : 0.155;\n    newWetDWindow = (newWetDReverseMix > 0 ? clamp(0.30 * newD / samplerate, 0.35, 1.25) : newWetDWindow) * (1 + 0.113 * 3);\n    newWetDFrames = newWetDWindow * samplerate;\n    newWetDPositionA = grainClock / newWetDWindow + 3 * 0.217;\n    newWetDPositionB = newWetDPositionA + 0.5;\n    newWetDGrainA = floor(newWetDPositionA);\n    newWetDGrainB = floor(newWetDPositionB);\n    newWetDPhaseA = newWetDPositionA - newWetDGrainA;\n    newWetDPhaseB = newWetDPositionB - newWetDGrainB;\n    // Indexed scatter lets matching newWetDProgram readers agree at newWetDA handoff.\n    newWetDSeedA = (newWetDGrainA + 1 + 142 * 3) * 12.9898;\n    newWetDSeedB = (newWetDGrainB + 72 + 142 * 3) * 12.9898;\n    newWetDScatterDepth = newWetDGranular * crossfeed * newWetDFrames * 0.71;\n    newWetDDriftDepth = newWetDGranular * motion * newWetDFrames * 0.69;\n    newWetDFrequency = 0.397 + 0.087 * 3;\n    newWetDScatterA = (2 * wrap(sin(newWetDSeedA) * 43758.5453, 0, 1) - 1) * newWetDScatterDepth;\n    newWetDScatterB = (2 * wrap(sin(newWetDSeedB) * 43758.5453, 0, 1) - 1) * newWetDScatterDepth;\n    newWetDDriftA = (0.63 * sin(newWetDGrainA * newWetDWindow * newWetDFrequency + 2 * 3) + 0.37 * (2 * slowA - 1)) * newWetDDriftDepth;\n    newWetDDriftB = (0.63 * sin(newWetDGrainB * newWetDWindow * newWetDFrequency + 2 * 3 + 1) + 0.37 * (2 * slowB - 1)) * newWetDDriftDepth;\n    newWetDSpacing = newWetDGranular * newWetDFrames * 0.71;\n    newWetDShift = (1 - newWetDRate) * newWetDFrames;\n    newWetDDistanceA = clamp(newDTap + newWetDShift * (newWetDPhaseA - 0.5) + newWetDScatterA + newWetDDriftA - newWetDSpacing, 2, newWetDLength - 2);\n    newWetDDistanceB = clamp(newDTap + newWetDShift * (newWetDPhaseB - 0.5) + newWetDScatterB + newWetDDriftB + newWetDSpacing, 2, newWetDLength - 2);\n    newWetDA = readTransport(tape, writeHead, direction, travel, newWetDDistanceA, newD, handoff, firstWritten, writtenSpan, 3);\n    newWetDB = readTransport(tape, writeHead, direction, travel, newWetDDistanceB, newD, handoff, firstWritten, writtenSpan, 3);\n    newWetDWeightA = 0.5 - 0.5 * cos(6.283185307179586 * newWetDPhaseA);\n    newWetD = newWetDA * newWetDWeightA + newWetDB * (1 - newWetDWeightA);\n    if (newWetDReverseMix > 0 && newWetDReverseMix < 1) {\n        newWetDDirect = readTransport(tape, writeHead, direction, travel, newDTap, newD, handoff, firstWritten, writtenSpan, 3);\n        newWetD = newWetDDirect + newWetDReverseMix * (newWetD - newWetDDirect);\n    }\n}\n\nplayD = ((oldWetD) + (amount) * ((newWetD) - (oldWetD)));\n\noldAux = oldMode == 0 ? 0 : oldMode == 3 ? (oldProgram == 11 ? 0.66 : 0) : 1;\nnewAux = newMode == 0 ? 0 : newMode == 3 ? (newProgram == 11 ? 0.66 : 0) : 1;\naux = ((oldAux) + (amount) * ((newAux) - (oldAux)));\norbitA = sin(twoPi * panPhaseA);\norbitB = sin(twoPi * panPhaseB);\npanA = -0.56 + 0.72 * motion * delayWeight * orbitA;\npanB = 0.56 + 0.72 * motion * delayWeight * orbitB;\npanC = (1 - ((oldMode == 3) + (amount) * ((newMode == 3) - (oldMode == 3)))) * (-0.24 - 0.53 * motion * delayWeight * orbitB);\npanD = (1 - ((oldMode == 3) + (amount) * ((newMode == 3) - (oldMode == 3)))) * (0.24 - 0.53 * motion * delayWeight * orbitA);\nwetNorm = 1 / sqrt(2 + 2 * aux * aux);\nwetL = wetNorm * (playA * sqrt((1 - clamp(panA, -1, 1)) * 0.5) + playB * sqrt((1 - clamp(panB, -1, 1)) * 0.5)\n      + aux * (playC * sqrt((1 - clamp(panC, -1, 1)) * 0.5) + playD * sqrt((1 - clamp(panD, -1, 1)) * 0.5)));\nwetR = wetNorm * (playA * sqrt((1 + clamp(panA, -1, 1)) * 0.5) + playB * sqrt((1 + clamp(panB, -1, 1)) * 0.5)\n      + aux * (playC * sqrt((1 + clamp(panC, -1, 1)) * 0.5) + playD * sqrt((1 + clamp(panD, -1, 1)) * 0.5)));\n\n// Rhythmic phase is measured in stored frames. Its step follows the host\n// tempo and time signature; a new take starts on the Record press.\nrhythmSize = round(clamp(size, 0, 2));\nrhythmBars = rhythmSize == 0 ? 1 : rhythmSize == 1 ? 2 : 4;\nrhythmPeriod = max(2, round(samplerate * 60.0 * rhythmBars * clamp(mod_beats_per_bar, 0.5, 32) / clamp(mod_tempo, 20, 400)));\nrhythmStyle = round(clamp(rhythm_style, 0, 6));\nrhythmCurrentEpoch = rhythmEpoch + cleared;\nrhythmCapacity = dim(rhythmTape);\nrhythmStart = rhythmSelected && captureRunning && (rhythmFrames < 2 || cleared);\nrhythmFreeForTake = rhythmStart ? rhythm_free >= 0.5 : cleared ? 0 : rhythmTakeFree;\nrhythmFinishEarly = rhythmSelected && rhythmRecordingFirst && !panicBlocking && !cleared\n                 && (rhythmFreeForTake ? !recording : !captureRunning);\nrhythmSealFree = rhythmFreeForTake && rhythmFinishEarly;\nrhythmCapturedLength = clamp(round(rhythmCursor), 2, rhythmCapacity);\nrhythmLength = rhythmStart ? (rhythmFreeForTake ? rhythmCapacity : min(rhythmPeriod, rhythmCapacity))\n             : cleared ? 0 : rhythmSealFree ? rhythmCapturedLength : rhythmFrames;\nrhythmCapturePeriod = rhythmStart ? (rhythmFreeForTake ? rhythmCapacity : rhythmPeriod)\n                    : cleared ? 0 : rhythmSealFree ? rhythmCapturedLength : rhythmFirstPeriod;\nrhythmIsPriming = (rhythmStart || (rhythmRecordingFirst && !rhythmFinishEarly)) && (!cleared || rhythmStart);\nrhythmPlayPeriod = rhythmIsPriming || rhythmFreeForTake ? rhythmCapturePeriod : rhythmPeriod;\nrhythmStep = rhythmLength / max(2, rhythmPlayPeriod);\n// Longer Octaves grains reduce tuning sidebands; preserve the normal Pitch window.\nrhythmGrainWindowLimit = rhythmStyle == 6 ? 0.36 : 0.14;\nrhythmGrainSeconds = min(rhythmGrainWindowLimit, 0.33 * max(2, rhythmPlayPeriod) / samplerate);\nrhythmDirection = reverse >= 0.5 && !rhythmIsPriming ? -1 : 1;\nrhythmPosition = rhythmStart || cleared ? 0 : rhythmFinishEarly ? (rhythmDirection < 0 ? max(0, ceil(rhythmCursor) - 1) : 0) : rhythmCursor;\nrhythmNextPosition = rhythmPosition + rhythmDirection * rhythmStep;\nrhythmCanAdvance = rhythmRuns && (!rhythmFreeForTake || !rhythmIsPriming || (rhythmSelected && captureRunning));\n\n// During the initial take both channels capture at full length. The\n// established right head then scans its shorter span at the same speed.\nrhythmPoly = rhythmStyle == 1 || rhythmStyle == 2;\nrhythmWasPoly = rhythmLastStyle == 1 || rhythmLastStyle == 2;\nrhythmRightRatio = rhythmStyle == 1 ? 0.875 : rhythmStyle == 2 ? 0.75 : 1;\nrhythmRightLength = rhythmPoly && !rhythmIsPriming\n                  ? min(rhythmLength, max(2, round(rhythmLength * rhythmRightRatio))) : rhythmLength;\nrhythmRightPosition = rhythmIsPriming || !rhythmPoly || rhythmStart || cleared ? rhythmPosition\n                    : rhythmFinishEarly ? (rhythmDirection < 0 ? rhythmRightLength - 1 : 0)\n                    : rhythmWasPoly ? wrap(rhythmRightCursor, 0, max(2, rhythmRightLength))\n                    : wrap(rhythmPosition, 0, max(2, rhythmRightLength));\nrhythmRightNextPosition = rhythmRightPosition + rhythmDirection * rhythmStep;\nrhythmPolySwitch = rhythmStyle != rhythmLastStyle && (rhythmPoly || rhythmWasPoly)\n                && !rhythmIsPriming && !rhythmFinishEarly && !cleared;\nrhythmPolyFade = cleared ? 0 : rhythmPolySwitch ? 1 : max(0, rhythmStyleFade - 1.0 / (0.012 * samplerate));\nrhythmFadeFrom = rhythmPolySwitch ? rhythmRightLastSample : rhythmRightFadeFrom;\n// The stored loop and host-facing phase stay unchanged across these styles.\nrhythmCuts = rhythmStyle == 3 ? 8 : rhythmStyle == 4 ? 6 : rhythmStyle == 5 ? 5 : 1;\nrhythmSliceCycle = (rhythmStart || cleared) ? 0 : rhythmFxCycle;\nrhythmSliceRotate = 1 + wrap(3 * rhythmSliceCycle + rhythmStyle, 0, max(1, rhythmCuts - 1));\nrhythmSliceStride = rhythmCuts == 8 ? 1 + 2 * wrap(rhythmSliceCycle + 3, 0, 4)\n                  : rhythmCuts == 6 ? 1 + 4 * wrap(rhythmSliceCycle, 0, 2)\n                  : 1 + wrap(rhythmSliceCycle + 1, 0, 4);\nrhythmSliceEdge = max(1, 0.006 * samplerate * rhythmStep);\nrhythmCycleEdge = rhythmCanAdvance && !rhythmIsPriming && rhythmLength >= 2\n               && (rhythmNextPosition >= rhythmLength || rhythmNextPosition < 0);\nrhythmFxCycle = wrap(rhythmSliceCycle + rhythmCycleEdge, 0, 4096);\n\n// In Octaves, Drift selects down / original / up. The regular Pitch\n// control multiplies the read ratio without changing the loop clock.\nrhythmOctaveTarget = rhythmStyle != 6 ? 1 : mod_drift < 0.333333 ? 0.5 : mod_drift > 0.666667 ? 2 : 1;\nrhythmOctaveSlew = rhythmOctaveState + control * (rhythmOctaveTarget - rhythmOctaveState);\nrhythmOctaveRatio = abs(rhythmOctaveSlew - rhythmOctaveTarget) < 0.00001 ? rhythmOctaveTarget : rhythmOctaveSlew;\nrhythmOctaveState = rhythmOctaveRatio;\n\nrhythmWetL = 0;\nrhythmWetR = 0;\nif (rhythmRuns && rhythmLength >= 2) {\n    if (!rhythmIsPriming) {\n        // Rhythmic effect hook.\n        rhythmWetL = readRhythmFx(rhythmTape, rhythmPosition, rhythmLength, rhythmCurrentEpoch, 0, rhythmCuts, rhythmSliceRotate, rhythmSliceStride, rhythmSliceEdge);\n        rhythmWetR = readRhythmFx(rhythmTape, rhythmRightPosition, rhythmRightLength, rhythmCurrentEpoch, 1, rhythmCuts, rhythmSliceRotate, rhythmSliceStride, rhythmSliceEdge);\n        // Shift only the wet reader. The tape, overdub and beat clock stay in sync.\n        rhythmPitch = pitchRatio * rhythmOctaveRatio;\n        if (abs(1 - rhythmPitch) > 0.0001) {\n            rhythmGrainWindow = rhythmGrainSeconds * samplerate * rhythmStep;\n            rhythmGrainA = rhythmGrainPhase;\n            rhythmGrainB = wrap(rhythmGrainA + 0.5, 0, 1);\n            rhythmGrainScale = rhythmDirection * (1 - rhythmPitch) * rhythmGrainWindow;\n            rhythmPitchPositionA = rhythmPosition - rhythmGrainScale * (rhythmGrainA - 0.5);\n            rhythmPitchPositionB = rhythmPosition - rhythmGrainScale * (rhythmGrainB - 0.5);\n            rhythmPitchLA = readRhythmFx(rhythmTape, rhythmPitchPositionA, rhythmLength, rhythmCurrentEpoch, 0, rhythmCuts, rhythmSliceRotate, rhythmSliceStride, rhythmSliceEdge);\n            rhythmPitchLB = readRhythmFx(rhythmTape, rhythmPitchPositionB, rhythmLength, rhythmCurrentEpoch, 0, rhythmCuts, rhythmSliceRotate, rhythmSliceStride, rhythmSliceEdge);\n            rhythmPitchRightA = rhythmRightPosition - rhythmGrainScale * (rhythmGrainA - 0.5);\n            rhythmPitchRightB = rhythmRightPosition - rhythmGrainScale * (rhythmGrainB - 0.5);\n            rhythmPitchRA = readRhythmFx(rhythmTape, rhythmPitchRightA, rhythmRightLength, rhythmCurrentEpoch, 1, rhythmCuts, rhythmSliceRotate, rhythmSliceStride, rhythmSliceEdge);\n            rhythmPitchRB = readRhythmFx(rhythmTape, rhythmPitchRightB, rhythmRightLength, rhythmCurrentEpoch, 1, rhythmCuts, rhythmSliceRotate, rhythmSliceStride, rhythmSliceEdge);\n            rhythmGrainWeight = 0.5 - 0.5 * cos(twoPi * rhythmGrainA);\n            rhythmPitchMix = clamp(abs(1 - rhythmPitch) * 80, 0, 1);\n            rhythmShiftL = rhythmPitchLA * rhythmGrainWeight + rhythmPitchLB * (1 - rhythmGrainWeight);\n            rhythmShiftR = rhythmPitchRA * rhythmGrainWeight + rhythmPitchRB * (1 - rhythmGrainWeight);\n            rhythmWetL = rhythmWetL + rhythmPitchMix * (rhythmShiftL - rhythmWetL);\n            rhythmWetR = rhythmWetR + rhythmPitchMix * (rhythmShiftR - rhythmWetR);\n        }\n        rhythmWetR = rhythmWetR + rhythmPolyFade * (rhythmFadeFrom - rhythmWetR);\n    }\n    rhythmErase = rhythmSelected && !holdOn && erasing > 0.0001;\n    if (rhythmSelected && (captureRunning || rhythmErase)) {\n        // One update per cell at the native tempo. At different playback rates\n        // fill crossed cells, bounded for unusually large tempo or meter changes.\n        rhythmWriteFrom = rhythmDirection > 0 ? floor(rhythmPosition) : ceil(rhythmPosition);\n        rhythmWriteTo = rhythmDirection > 0 ? floor(rhythmNextPosition) : ceil(rhythmNextPosition);\n        rhythmWriteRightFrom = rhythmDirection > 0 ? floor(rhythmRightPosition) : ceil(rhythmRightPosition);\n        rhythmWriteRightTo = rhythmDirection > 0 ? floor(rhythmRightNextPosition) : ceil(rhythmRightNextPosition);\n        rhythmCrossedL = abs(rhythmWriteTo - rhythmWriteFrom);\n        rhythmCrossedR = abs(rhythmWriteRightTo - rhythmWriteRightFrom);\n        rhythmWritesL = min(16, rhythmCrossedL);\n        rhythmWritesR = min(16, rhythmCrossedR);\n        rhythmWrites = max(rhythmWritesL, rhythmWritesR);\n        rhythmArmL = captureRunning && (group == 1 || group == 3);\n        rhythmArmR = captureRunning && (group == 2 || group == 3);\n        for (rhythmFrame = 0; rhythmFrame < rhythmWrites; rhythmFrame += 1) {\n            // The independently clocked heads can address different cells.\n            // A new epoch tag also initializes the unaddressed companion lane.\n            rhythmOffsetL = floor(rhythmFrame * rhythmCrossedL / max(1, rhythmWritesL));\n            rhythmOffsetR = floor(rhythmFrame * rhythmCrossedR / max(1, rhythmWritesR));\n            rhythmCellL = wrap(rhythmWriteFrom + rhythmDirection * rhythmOffsetL, 0, rhythmLength);\n            rhythmCellR = wrap(rhythmWriteRightFrom + rhythmDirection * rhythmOffsetR, 0, rhythmRightLength);\n            rhythmValidL = peek(rhythmTape, rhythmCellL, 2) == rhythmCurrentEpoch;\n            rhythmValidR = peek(rhythmTape, rhythmCellR, 2) == rhythmCurrentEpoch;\n            rhythmPrevL = rhythmValidL ? peek(rhythmTape, rhythmCellL, 0) : 0;\n            rhythmPrevR = rhythmValidR ? peek(rhythmTape, rhythmCellR, 1) : 0;\n            rhythmPower = rhythmPrevL * rhythmPrevL + rhythmPrevR * rhythmPrevR;\n            rhythmBuild = max(0, effectiveRegen - 1);\n            rhythmRetention = effectiveRegen * (1 - 0.97 * suppress) / (1 + rhythmBuild * rhythmPower / (0.62 * 0.62));\n            rhythmWriteL = rhythmArmL ? rhythmRetention * rhythmPrevL + 0.67 * injectA * injectedL : rhythmPrevL;\n            rhythmWriteR = rhythmArmR ? rhythmRetention * rhythmPrevR + 0.67 * injectB * injectedR : rhythmPrevR;\n            rhythmKeep = rhythmErase ? 1 - erasing : 1;\n            rhythmTouchL = rhythmFrame < rhythmWritesL && (rhythmArmL || rhythmErase);\n            rhythmTouchR = rhythmFrame < rhythmWritesR && (rhythmArmR || rhythmErase);\n            rhythmRawL = rhythmTouchL ? clamp(fixnan(rhythmWriteL * rhythmKeep), -16, 16) : rhythmPrevL;\n            rhythmRawR = rhythmTouchR ? clamp(fixnan(rhythmWriteR * rhythmKeep), -16, 16) : rhythmPrevR;\n            rhythmPeak = max(rhythmTouchL ? abs(rhythmRawL) : 0, rhythmTouchR ? abs(rhythmRawR) : 0);\n            rhythmSafePeak = min(rhythmPeak, 0.54) + 0.06 * tanh(max(0, rhythmPeak - 0.54) / 0.06);\n            rhythmGuard = rhythmPeak > 0.54 ? rhythmSafePeak / rhythmPeak : 1;\n            rhythmStoreL = rhythmRawL * rhythmGuard;\n            rhythmStoreR = rhythmRawR * rhythmGuard;\n            if (rhythmTouchL && !rhythmValidL && (!rhythmTouchR || rhythmCellL != rhythmCellR)) {\n                poke(rhythmTape, 0, rhythmCellL, 1);\n            }\n            if (rhythmTouchR && !rhythmValidR && (!rhythmTouchL || rhythmCellL != rhythmCellR)) {\n                poke(rhythmTape, 0, rhythmCellR, 0);\n            }\n            if (rhythmTouchL) {\n                poke(rhythmTape, rhythmStoreL, rhythmCellL, 0);\n                poke(rhythmTape, rhythmCurrentEpoch, rhythmCellL, 2);\n            }\n            if (rhythmTouchR) {\n                poke(rhythmTape, rhythmStoreR, rhythmCellR, 1);\n                poke(rhythmTape, rhythmCurrentEpoch, rhythmCellR, 2);\n            }\n        }\n    }\n}\n\n// Independent short, damped, orthogonal diffusion. Blur also takes a\n// smaller live-input send before recording starts. It never alters the tape.\nrhythmVerbTarget = clamp(mod_blur, 0, 1);\nrhythmVerbSlew = 1.0 / (0.020 * samplerate);\nrhythmVerbAmount = rhythmVerbTarget > rhythmVerbControl\n                 ? min(rhythmVerbTarget, rhythmVerbControl + rhythmVerbSlew)\n                 : max(rhythmVerbTarget, rhythmVerbControl - rhythmVerbSlew);\nrhythmVerbControl = rhythmVerbAmount;\nrhythmVerbMuted = panicPressed || (rhythmVerbPanic && !captureRunning);\nrhythmVerbPanic = rhythmVerbMuted;\nrhythmVerbOpen = rhythmRuns && !rhythmVerbMuted && !panicBlocking && rhythmVerbAmount > 0;\nrhythmVerbTail = cleared ? 0 : rhythmVerbOpen ? round(2 * samplerate) : max(0, rhythmVerbTailFrames - 1);\nrhythmVerbActive = rhythmVerbOpen || rhythmVerbTail > 0;\nrhythmVerbAge = cleared ? 0 : rhythmVerbWritten;\nrhythmVerbOutL = 0;\nrhythmVerbOutR = 0;\nrhythmVerbToneA = 0;\nrhythmVerbToneB = 0;\nrhythmVerbToneC = 0;\nrhythmVerbToneD = 0;\nif (rhythmVerbActive) {\n    rhythmVerbCapacity = dim(rhythmVerbTape);\n    rhythmVerbA = min(rhythmVerbCapacity - 1, max(2, round(1009 * samplerate / 48000)));\n    rhythmVerbB = min(rhythmVerbCapacity - 1, max(2, round(1451 * samplerate / 48000)));\n    rhythmVerbC = min(rhythmVerbCapacity - 1, max(2, round(2063 * samplerate / 48000)));\n    rhythmVerbD = min(rhythmVerbCapacity - 1, max(2, round(2833 * samplerate / 48000)));\n    rhythmVerbReadA = rhythmVerbAge >= rhythmVerbA ? peek(rhythmVerbTape, wrap(rhythmVerbHead - rhythmVerbA, 0, rhythmVerbCapacity), 0) : 0;\n    rhythmVerbReadB = rhythmVerbAge >= rhythmVerbB ? peek(rhythmVerbTape, wrap(rhythmVerbHead - rhythmVerbB, 0, rhythmVerbCapacity), 1) : 0;\n    rhythmVerbReadC = rhythmVerbAge >= rhythmVerbC ? peek(rhythmVerbTape, wrap(rhythmVerbHead - rhythmVerbC, 0, rhythmVerbCapacity), 2) : 0;\n    rhythmVerbReadD = rhythmVerbAge >= rhythmVerbD ? peek(rhythmVerbTape, wrap(rhythmVerbHead - rhythmVerbD, 0, rhythmVerbCapacity), 3) : 0;\n    rhythmVerbDamping = 1 - exp(-twoPi * 4400 / samplerate);\n    rhythmVerbToneA = (cleared ? 0 : rhythmVerbToneStateA) + rhythmVerbDamping * (rhythmVerbReadA - (cleared ? 0 : rhythmVerbToneStateA));\n    rhythmVerbToneB = (cleared ? 0 : rhythmVerbToneStateB) + rhythmVerbDamping * (rhythmVerbReadB - (cleared ? 0 : rhythmVerbToneStateB));\n    rhythmVerbToneC = (cleared ? 0 : rhythmVerbToneStateC) + rhythmVerbDamping * (rhythmVerbReadC - (cleared ? 0 : rhythmVerbToneStateC));\n    rhythmVerbToneD = (cleared ? 0 : rhythmVerbToneStateD) + rhythmVerbDamping * (rhythmVerbReadD - (cleared ? 0 : rhythmVerbToneStateD));\n    rhythmVerbNetworkA = 0.5 * (rhythmVerbToneA + rhythmVerbToneB + rhythmVerbToneC + rhythmVerbToneD);\n    rhythmVerbNetworkB = 0.5 * (rhythmVerbToneA - rhythmVerbToneB + rhythmVerbToneC - rhythmVerbToneD);\n    rhythmVerbNetworkC = 0.5 * (rhythmVerbToneA + rhythmVerbToneB - rhythmVerbToneC - rhythmVerbToneD);\n    rhythmVerbNetworkD = 0.5 * (rhythmVerbToneA - rhythmVerbToneB - rhythmVerbToneC + rhythmVerbToneD);\n    rhythmVerbSend = rhythmVerbOpen && !cleared ? rhythmVerbAmount : 0;\n    rhythmVerbInL = rhythmVerbSend * tanh(0.70 * rhythmWetL + 0.38 * (1 - holdMix) * inputL);\n    rhythmVerbInR = rhythmVerbSend * tanh(0.70 * rhythmWetR + 0.38 * (1 - holdMix) * inputR);\n    poke(rhythmVerbTape, 0.65 * tanh((0.47 * rhythmVerbInL + 0.73 * rhythmVerbNetworkA) / 0.65), rhythmVerbHead, 0);\n    poke(rhythmVerbTape, 0.65 * tanh((0.47 * rhythmVerbInR + 0.73 * rhythmVerbNetworkB) / 0.65), rhythmVerbHead, 1);\n    poke(rhythmVerbTape, 0.65 * tanh((0.33 * rhythmVerbInL + 0.73 * rhythmVerbNetworkC) / 0.65), rhythmVerbHead, 2);\n    poke(rhythmVerbTape, 0.65 * tanh((0.33 * rhythmVerbInR + 0.73 * rhythmVerbNetworkD) / 0.65), rhythmVerbHead, 3);\n    rhythmVerbOutL = 0.53 * (rhythmVerbReadA + rhythmVerbReadC);\n    rhythmVerbOutR = 0.53 * (rhythmVerbReadB + rhythmVerbReadD);\n}\nrhythmVerbHead = rhythmVerbActive ? wrap(rhythmVerbHead + 1, 0, dim(rhythmVerbTape)) : rhythmVerbHead;\nrhythmVerbWritten = rhythmVerbActive ? min(rhythmVerbAge + 1, dim(rhythmVerbTape)) : 0;\nrhythmVerbTailFrames = rhythmVerbTail;\nrhythmVerbToneStateA = rhythmVerbActive ? rhythmVerbToneA : 0;\nrhythmVerbToneStateB = rhythmVerbActive ? rhythmVerbToneB : 0;\nrhythmVerbToneStateC = rhythmVerbActive ? rhythmVerbToneC : 0;\nrhythmVerbToneStateD = rhythmVerbActive ? rhythmVerbToneD : 0;\nrhythmVerbWet = clamp(8 * rhythmVerbAmount, 0, 1);\nrhythmWetL = rhythmWetL + rhythmVerbWet * rhythmVerbOutL;\nrhythmWetR = rhythmWetR + rhythmVerbWet * rhythmVerbOutR;\n\nwetL = wetL + rhythmBlend * (rhythmWetL - wetL);\nwetR = wetR + rhythmBlend * (rhythmWetR - wetR);\n\nrhythmFade = rhythmNextFade;\nrhythmFrames = rhythmLength;\nrhythmFirstPeriod = rhythmCapturePeriod;\nrhythmEpoch = rhythmCurrentEpoch;\nrhythmRecordingFirst = rhythmIsPriming && (rhythmNextPosition < rhythmLength || !rhythmCanAdvance);\nrhythmCursor = rhythmCanAdvance && rhythmLength >= 2 ? wrap(rhythmNextPosition, 0, rhythmLength) : rhythmPosition;\nrhythmRightCursor = rhythmCanAdvance && rhythmRightLength >= 2 ? wrap(rhythmRightNextPosition, 0, rhythmRightLength) : rhythmRightPosition;\nrhythmLastStyle = rhythmStyle;\nrhythmTakeFree = rhythmFreeForTake;\nrhythmStyleFade = rhythmPolyFade;\nrhythmRightLastSample = rhythmWetR;\nrhythmRightFadeFrom = rhythmFadeFrom;\nrhythmGrainPhase = wrap(rhythmGrainPhase + 1.0 / (rhythmGrainSeconds * samplerate), 0, 1);\n// Filter the audible wet signal in every mode, including the first return\n// and Hold. The ambient loop's separate filters still bypass during Hold.\nwetHighNextL = cleared ? 0 : wetHighL + highCoefficient * (wetL - wetHighL);\nwetHighNextR = cleared ? 0 : wetHighR + highCoefficient * (wetR - wetHighR);\nwetBrightL = wetL - highAmount * wetHighNextL;\nwetBrightR = wetR - highAmount * wetHighNextR;\nwetLowNextL = cleared ? 0 : wetLowL + lowCoefficient * (wetBrightL - wetLowL);\nwetLowNextR = cleared ? 0 : wetLowR + lowCoefficient * (wetBrightR - wetLowR);\nwetToneL = wetBrightL + lowAmount * (wetLowNextL - wetBrightL);\nwetToneR = wetBrightR + lowAmount * (wetLowNextR - wetBrightR);\nwetHighL = wetHighNextL;\nwetHighR = wetHighNextR;\nwetLowL = wetLowNextL;\nwetLowR = wetLowNextR;\n\nwetLevel = wetFade * (1 - 0.85 * suppress);\n// Keep the wet output tone controls out of the dry compressor sidechain.\ndetector = max(abs(rawL + wetL * wetLevel), abs(rawR + wetR * wetLevel));\nwetL = wetToneL * wetLevel;\nwetR = wetToneR * wetLevel;\n// A Panic must not jump the gain of a continuing dry signal.\npriorCombined = (cleared && !panicClearActive) ? 0 : combinedEnvelope;\nlinked = ((priorCombined) + (detector > priorCombined ? attack : release) * ((detector) - (priorCombined)));\ncompGain = ((1) + (max(character, 0)) * ((1.12 * pow(max(1, linked / 0.24), -0.55)) - (1)));\n// Width shapes only the stereo wet output. Widening gets gentle\n// energy normalization and unity width preserves the original signal.\nwidthMix = widthState + control * (clamp(mod_width, 0, 2) - widthState);\nwidthGain = 1 / sqrt(max(1, (1 + widthMix * widthMix) * 0.5));\nwidthSide = 0.5 * (wetL - wetR) * (widthMix - 1);\nwetL = (wetL + widthSide) * widthGain;\nwetR = (wetR - widthSide) * widthGain;\nout4 = max(abs(wetL), abs(wetR));\ndryGain = cos(blend * 1.570796326794897);\nwetGain = sin(blend * 1.570796326794897);\nlimitedLRaw = clamp(fixnan(gainOut * compGain * (dryGain * rawL + wetGain * wetL)), -16, 16);\nlimitedLMag = abs(limitedLRaw);\nlimitedLKnee = max(0, limitedLMag - 0.75);\nlimitedL = sign(limitedLRaw) * (min(limitedLMag, 0.75) + 0.21 * tanh(limitedLKnee / 0.21));\nout1 = limitedL;\nlimitedRRaw = clamp(fixnan(gainOut * compGain * (dryGain * rawR + wetGain * wetR)), -16, 16);\nlimitedRMag = abs(limitedRRaw);\nlimitedRKnee = max(0, limitedRMag - 0.75);\nlimitedR = sign(limitedRRaw) * (min(limitedRMag, 0.75) + 0.21 * tanh(limitedRKnee / 0.21));\nout2 = limitedR;\n\nif (cleared || ambientRuns) {\n    firstWritten = writtenSpan < 0 ? writeHead : min(firstWritten, writeHead);\n    lastWritten = writtenSpan < 0 ? writeHead : max(lastWritten, writeHead);\n    if (!ambientRuns) {\n        lastWritten = writeHead - 1;\n    }\n}\nif (ambientRuns) {\n    writeHead = writeHead + direction;\n    transportDirection = direction;\n    directionFrames = min(travel + 1, capacity);\n}\nclearSeen = clear;\nfadeLeft = remaining;\nholdState = holdMix;\npanicSeen = panic;\npanicClearing = panicClearActive && !cleared;\npanicNeedsOff = waitingForOff;\nwidthState = widthMix;\nsourceConfig = progress >= 1 ? newConfig : oldConfig;\ntargetConfig = newConfig;\nchangePhase = progress;\ncaptureA = recA;\ncaptureB = recB;\nfeedbackState = regen;\nblurState = crossfeed;\ndriftState = motion;\nmixState = blend;\ndriveState = saturation;\ndynamicsState = character;\neraseState = eraseSmoothed;\ninputGain = gainIn;\noutputGain = gainOut;\nhighState = highCoefficient;\nhighMix = highAmount;\nlowState = lowCoefficient;\nlowMix = lowAmount;\ninputEnvelope = env;\ncombinedEnvelope = linked;\npanPhaseA = wrap(panPhaseA + (0.032 + 0.009 * sin(twoPi * wanderPhaseA) + 0.012 * (2 * slowA - 1)) / samplerate, 0, 1);\npanPhaseB = wrap(panPhaseB + (0.023 + 0.007 * sin(twoPi * wanderPhaseB) + 0.010 * (2 * slowB - 1)) / samplerate, 0, 1);\nwanderPhaseA = wrap(wanderPhaseA + 1.0 / (97 * samplerate), 0, 1);\nwanderPhaseB = wrap(wanderPhaseB + 1.0 / (137 * samplerate), 0, 1);\nchaosClockA = wrap(chaosTickA, 0, 1);\nchaosClockB = wrap(chaosTickB, 0, 1);\nchaosA = chaosNextA;\nchaosB = chaosNextB;\nwanderA = slowA;\nwanderB = slowB;\ngrainClock = grainClock + 1.0 / samplerate;\nout5 = mod_mix_smoothed;\nout6 = mod_feedback;\nout7 = mod_blur;\nout8 = mod_drift;\nout9 = mod_drive;\nout10 = mod_dynamics;\nout11 = mod_input_db;\nout12 = mod_output_db;\nout13 = mod_width;\nout14 = mod_pitch;\nout15 = mod_hpf_hz;\nout16 = mod_lpf_hz;\nout17 = mod_tempo;\nout18 = mod_beats_per_bar;\n"
        }
       },
       {
        "box": {
         "id": "in-1",
         "maxclass": "newobj",
         "text": "in 1",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          24,
          20,
          45,
          22
         ]
        }
       },
       {
        "box": {
         "id": "out-1",
         "maxclass": "newobj",
         "text": "out 1",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          24,
          510,
          45,
          22
         ]
        }
       },
       {
        "box": {
         "id": "in-2",
         "maxclass": "newobj",
         "text": "in 2",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          162,
          20,
          45,
          22
         ]
        }
       },
       {
        "box": {
         "id": "out-2",
         "maxclass": "newobj",
         "text": "out 2",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          162,
          510,
          45,
          22
         ]
        }
       },
       {
        "box": {
         "id": "out-3",
         "maxclass": "newobj",
         "text": "out 3",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          300,
          510,
          45,
          22
         ]
        }
       },
       {
        "box": {
         "id": "out-4",
         "maxclass": "newobj",
         "text": "out 4",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          438,
          510,
          45,
          22
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-in-0",
         "maxclass": "newobj",
         "patching_rect": [
          500,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 3",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-0",
         "maxclass": "newobj",
         "patching_rect": [
          500,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 5"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-1",
         "maxclass": "newobj",
         "patching_rect": [
          536,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 4",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-1",
         "maxclass": "newobj",
         "patching_rect": [
          536,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 6"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-2",
         "maxclass": "newobj",
         "patching_rect": [
          572,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 5",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-2",
         "maxclass": "newobj",
         "patching_rect": [
          572,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 7"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-3",
         "maxclass": "newobj",
         "patching_rect": [
          608,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 6",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-3",
         "maxclass": "newobj",
         "patching_rect": [
          608,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 8"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-4",
         "maxclass": "newobj",
         "patching_rect": [
          644,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 7",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-4",
         "maxclass": "newobj",
         "patching_rect": [
          644,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 9"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-5",
         "maxclass": "newobj",
         "patching_rect": [
          680,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 8",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-5",
         "maxclass": "newobj",
         "patching_rect": [
          680,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 10"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-6",
         "maxclass": "newobj",
         "patching_rect": [
          716,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 9",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-6",
         "maxclass": "newobj",
         "patching_rect": [
          716,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 11"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-7",
         "maxclass": "newobj",
         "patching_rect": [
          752,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 10",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-7",
         "maxclass": "newobj",
         "patching_rect": [
          752,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 12"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-8",
         "maxclass": "newobj",
         "patching_rect": [
          788,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 11",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-8",
         "maxclass": "newobj",
         "patching_rect": [
          788,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 13"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-9",
         "maxclass": "newobj",
         "patching_rect": [
          824,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 12",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-9",
         "maxclass": "newobj",
         "patching_rect": [
          824,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 14"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-10",
         "maxclass": "newobj",
         "patching_rect": [
          860,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 13",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-10",
         "maxclass": "newobj",
         "patching_rect": [
          860,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 15"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-11",
         "maxclass": "newobj",
         "patching_rect": [
          896,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 14",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-11",
         "maxclass": "newobj",
         "patching_rect": [
          896,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 16"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-12",
         "maxclass": "newobj",
         "patching_rect": [
          932,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 15",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-12",
         "maxclass": "newobj",
         "patching_rect": [
          932,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 17"
        }
       },
       {
        "box": {
         "id": "drift-mod-in-13",
         "maxclass": "newobj",
         "patching_rect": [
          968,
          20,
          35,
          22
         ],
         "numinlets": 0,
         "numoutlets": 1,
         "text": "in 16",
         "outlettype": [
          ""
         ]
        }
       },
       {
        "box": {
         "id": "drift-mod-out-13",
         "maxclass": "newobj",
         "patching_rect": [
          968,
          510,
          35,
          22
         ],
         "numinlets": 1,
         "numoutlets": 0,
         "text": "out 18"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "source": [
          "in-1",
          0
         ],
         "destination": [
          "code",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          0
         ],
         "destination": [
          "out-1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "in-2",
          0
         ],
         "destination": [
          "code",
          1
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          1
         ],
         "destination": [
          "out-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          2
         ],
         "destination": [
          "out-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          3
         ],
         "destination": [
          "out-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-0",
          0
         ],
         "destination": [
          "code",
          2
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          4
         ],
         "destination": [
          "drift-mod-out-0",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-1",
          0
         ],
         "destination": [
          "code",
          3
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          5
         ],
         "destination": [
          "drift-mod-out-1",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-2",
          0
         ],
         "destination": [
          "code",
          4
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          6
         ],
         "destination": [
          "drift-mod-out-2",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-3",
          0
         ],
         "destination": [
          "code",
          5
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          7
         ],
         "destination": [
          "drift-mod-out-3",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-4",
          0
         ],
         "destination": [
          "code",
          6
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          8
         ],
         "destination": [
          "drift-mod-out-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-5",
          0
         ],
         "destination": [
          "code",
          7
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          9
         ],
         "destination": [
          "drift-mod-out-5",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-6",
          0
         ],
         "destination": [
          "code",
          8
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          10
         ],
         "destination": [
          "drift-mod-out-6",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-7",
          0
         ],
         "destination": [
          "code",
          9
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          11
         ],
         "destination": [
          "drift-mod-out-7",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-8",
          0
         ],
         "destination": [
          "code",
          10
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          12
         ],
         "destination": [
          "drift-mod-out-8",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-9",
          0
         ],
         "destination": [
          "code",
          11
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          13
         ],
         "destination": [
          "drift-mod-out-9",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-10",
          0
         ],
         "destination": [
          "code",
          12
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          14
         ],
         "destination": [
          "drift-mod-out-10",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-11",
          0
         ],
         "destination": [
          "code",
          13
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          15
         ],
         "destination": [
          "drift-mod-out-11",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-12",
          0
         ],
         "destination": [
          "code",
          14
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          16
         ],
         "destination": [
          "drift-mod-out-12",
          0
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "drift-mod-in-13",
          0
         ],
         "destination": [
          "code",
          15
         ]
        }
       },
       {
        "patchline": {
         "source": [
          "code",
          17
         ],
         "destination": [
          "drift-mod-out-13",
          0
         ]
        }
       }
      ]
     }
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "* 1.1",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "prepend feedback",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "prepend blur",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      940.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "prepend drift",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1110.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "* 4.99",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1110.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "i",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1110.0,
      162.0,
      150.0,
      22.0
     ],
     "text": "prepend mode",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "* 2.99",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "i",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280.0,
      162.0,
      150.0,
      22.0
     ],
     "text": "prepend size",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      110.0,
      150.0,
      22.0
     ],
     "text": "* 3.99",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      136.0,
      150.0,
      22.0
     ],
     "text": "i",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      162.0,
      150.0,
      22.0
     ],
     "text": "prepend record",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "> 0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      246.0,
      150.0,
      22.0
     ],
     "text": "prepend hold",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "* 2.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      246.0,
      150.0,
      22.0
     ],
     "text": "prepend width",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      940.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "scale 0. 1. -12. 0.",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      940.0,
      246.0,
      150.0,
      22.0
     ],
     "text": "prepend pitch",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1110.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "> 0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1110.0,
      246.0,
      150.0,
      22.0
     ],
     "text": "prepend reverse",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "> 0.5",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1280.0,
      246.0,
      150.0,
      22.0
     ],
     "text": "prepend half_speed",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1450.0,
      220.0,
      150.0,
      22.0
     ],
     "text": "prepend drive",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      330.0,
      150.0,
      22.0
     ],
     "text": "expr 200.*exp($f1*4.605)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      356.0,
      150.0,
      22.0
     ],
     "text": "prepend lpf_hz",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      330.0,
      150.0,
      22.0
     ],
     "text": "* 6.99",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      356.0,
      150.0,
      22.0
     ],
     "text": "i",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      770.0,
      382.0,
      150.0,
      22.0
     ],
     "text": "prepend rhythm_style",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      940.0,
      330.0,
      150.0,
      22.0
     ],
     "text": "prepend erase",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      600.0,
      500.0,
      60.0,
      22.0
     ],
     "text": "t f f",
     "outlettype": [
      "",
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      530.0,
      160.0,
      22.0
     ],
     "text": "expr 20.*exp($f1*4.605)",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      600.0,
      560.0,
      100.0,
      22.0
     ],
     "text": "prepend hpf_hz",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      780.0,
      530.0,
      130.0,
      22.0
     ],
     "text": "expr ($f1>0.01)*2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      780.0,
      560.0,
      80.0,
      22.0
     ],
     "text": "prepend hpf",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      960.0,
      530.0,
      130.0,
      22.0
     ],
     "text": "expr ($f1<0.99)*2",
     "outlettype": [
      ""
     ]
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      960.0,
      560.0,
      80.0,
      22.0
     ],
     "text": "prepend lpf",
     "outlettype": [
      ""
     ]
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-7",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      1
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      1
     ],
     "destination": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      2
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      3
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      4
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      5
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      6
     ],
     "destination": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      7
     ],
     "destination": [
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      0
     ],
     "destination": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      8
     ],
     "destination": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      9
     ],
     "destination": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      10
     ],
     "destination": [
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      11
     ],
     "destination": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      13
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      14
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-34",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      15
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      12
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      0
     ],
     "destination": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      1
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      13
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-43",
      0
     ],
     "destination": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   }
  ]
 }
}