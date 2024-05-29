cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  coagulopathy-elixhauser-primary-care-fibrin---primary:
    run: coagulopathy-elixhauser-primary-care-fibrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  coagulopathy-elixhauser-primary-care-hypoprothrombinaemia---primary:
    run: coagulopathy-elixhauser-primary-care-hypoprothrombinaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-fibrin---primary/output
  thrombocytopenic-coagulopathy-elixhauser-primary-care---primary:
    run: thrombocytopenic-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-hypoprothrombinaemia---primary/output
  idiopathic-coagulopathy-elixhauser-primary-care---primary:
    run: idiopathic-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: thrombocytopenic-coagulopathy-elixhauser-primary-care---primary/output
  coagulopathy-elixhauser-primary-care-postpartum---primary:
    run: coagulopathy-elixhauser-primary-care-postpartum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: idiopathic-coagulopathy-elixhauser-primary-care---primary/output
  secondary-coagulopathy-elixhauser-primary-care---primary:
    run: secondary-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-postpartum---primary/output
  coagulopathy-elixhauser-primary-care-evan's---primary:
    run: coagulopathy-elixhauser-primary-care-evan's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: secondary-coagulopathy-elixhauser-primary-care---primary/output
  qualitative-coagulopathy-elixhauser-primary-care---primary:
    run: qualitative-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-evan's---primary/output
  coagulopathy-elixhauser-primary-care-haemophilia---primary:
    run: coagulopathy-elixhauser-primary-care-haemophilia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: qualitative-coagulopathy-elixhauser-primary-care---primary/output
  essential-coagulopathy-elixhauser-primary-care---primary:
    run: essential-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-haemophilia---primary/output
  coagulopathy-elixhauser-primary-care-factor---primary:
    run: coagulopathy-elixhauser-primary-care-factor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: essential-coagulopathy-elixhauser-primary-care---primary/output
  haemorrhagic-coagulopathy-elixhauser-primary-care---primary:
    run: haemorrhagic-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-factor---primary/output
  neonatal-coagulopathy-elixhauser-primary-care---primary:
    run: neonatal-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: haemorrhagic-coagulopathy-elixhauser-primary-care---primary/output
  coagulopathy-elixhauser-primary-care-deficiency---primary:
    run: coagulopathy-elixhauser-primary-care-deficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: neonatal-coagulopathy-elixhauser-primary-care---primary/output
  congenital-coagulopathy-elixhauser-primary-care---primary:
    run: congenital-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-deficiency---primary/output
  coagulopathy-elixhauser-primary-care---primary:
    run: coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: congenital-coagulopathy-elixhauser-primary-care---primary/output
  coagulopathy-elixhauser-primary-care-thrombocythaemia---primary:
    run: coagulopathy-elixhauser-primary-care-thrombocythaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care---primary/output
  coagulopathy-elixhauser-primary-care-acquired---primary:
    run: coagulopathy-elixhauser-primary-care-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-thrombocythaemia---primary/output
  coagulopathy-elixhauser-primary-care-condition---primary:
    run: coagulopathy-elixhauser-primary-care-condition---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-acquired---primary/output
  hereditary-coagulopathy-elixhauser-primary-care---primary:
    run: hereditary-coagulopathy-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-condition---primary/output
  coagulopathy-elixhauser-primary-care-vitamin---primary:
    run: coagulopathy-elixhauser-primary-care-vitamin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: hereditary-coagulopathy-elixhauser-primary-care---primary/output
  coagulopathy-elixhauser-primary-care-willebrand---primary:
    run: coagulopathy-elixhauser-primary-care-willebrand---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-vitamin---primary/output
  coagulopathy-elixhauser-primary-care-clotting---primary:
    run: coagulopathy-elixhauser-primary-care-clotting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-willebrand---primary/output
  coagulopathy-elixhauser-primary-care-christmas---primary:
    run: coagulopathy-elixhauser-primary-care-christmas---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-clotting---primary/output
  coagulopathy-elixhauser-primary-care-defects---primary:
    run: coagulopathy-elixhauser-primary-care-defects---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-christmas---primary/output
  coagulopathy-elixhauser-primary-care-specified---primary:
    run: coagulopathy-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-defects---primary/output
  coagulopathy-elixhauser-primary-care-rosenthal's---primary:
    run: coagulopathy-elixhauser-primary-care-rosenthal's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-specified---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: coagulopathy-elixhauser-primary-care-rosenthal's---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
