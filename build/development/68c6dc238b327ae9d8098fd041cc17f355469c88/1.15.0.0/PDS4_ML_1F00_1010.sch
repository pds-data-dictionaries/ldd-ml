<?xml version="1.0" encoding="UTF-8"?>
<<<<<<< HEAD:build/development/68c6dc238b327ae9d8098fd041cc17f355469c88/1.15.0.0/PDS4_ML_1F00_1010.sch
  <!-- PDS4 Schematron for Name Space Id:ml  Version:1.0.1.0 - Sat May 21 00:21:07 UTC 2022 -->
=======
  <!-- PDS4 Schematron for Name Space Id:ml  Version:1.0.0.0 - Sat May 21 00:18:42 UTC 2022 -->
>>>>>>> dbe959b370980c4ef9f22a803dadffacc4684750:build/development/7e801da6850b1eea9075f4d0624a723857a0c694/1.15.0.0/PDS4_ML_1F00_1000.sch
  <!-- Generated from the PDS4 Information Model Version 1.15.0.0 - System Build 11a -->
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
