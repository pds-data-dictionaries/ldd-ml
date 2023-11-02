<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:ml  Version:1.2.0.0 - Thu Nov 02 23:31:45 UTC 2023 -->
  <!-- Generated from the PDS4 Information Model Version 1.18.0.0 - System Build 12.1 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/ml/v1" prefix="ml"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="ml:Machine_Learning_Algorithm/ml:algorithm_learning_style">
      <sch:assert test=". = ('Semisupervised_Learning', 'Supervised_Learning', 'Unsupervised_Learning')">
        <title>ml:Machine_Learning_Algorithm/ml:algorithm_learning_style/ml:algorithm_learning_style</title>
        The attribute ml:Machine_Learning_Algorithm/ml:algorithm_learning_style must be equal to one of the following values 'Semisupervised_Learning', 'Supervised_Learning', 'Unsupervised_Learning'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ml:Machine_Learning_Algorithm/ml:algorithm_type">
      <sch:assert test=". = ('Convolutional_Neural_Network_Classifier')">
        <title>ml:Machine_Learning_Algorithm/ml:algorithm_type/ml:algorithm_type</title>
        The attribute ml:Machine_Learning_Algorithm/ml:algorithm_type must be equal to the value 'Convolutional_Neural_Network_Classifier'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ml:Trained_Model_Architecture/pds:Internal_Reference">
      <sch:assert test="pds:reference_type = 'class_to_document'">
        <title>ml:Trained_Model_Architecture/pds:Internal_Reference/Rule</title>
        In ml:Trained_Model_Architecture, Internal_Reference.reference_type must be equal to 'class_to_document'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
