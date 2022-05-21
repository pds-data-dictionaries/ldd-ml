<?xml version="1.0" encoding="UTF-8"?>
<<<<<<< HEAD:build/development/b52d1a8329ffa794d8eeb7b0dbf1a3cecf7317aa/1.17.0.0/PDS4_ML_1H00_1010.sch
  <!-- PDS4 Schematron for Name Space Id:ml  Version:1.0.1.0 - Sat May 21 00:30:37 UTC 2022 -->
=======
  <!-- PDS4 Schematron for Name Space Id:ml  Version:1.0.0.0 - Wed Dec 15 16:50:35 UTC 2021 -->
>>>>>>> update-tests:build/development/cd819caa1eb68147d42d3610c8dd3bf5a5eaf352/1.17.0.0/PDS4_ML_1H00_1000.sch
  <!-- Generated from the PDS4 Information Model Version 1.17.0.0 - System Build 12.0 -->
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
</sch:schema>
