# PDS4 Machine learning Analysis Local Data Dictionary User's Guide
November 5, 2021

Kiri Wagstaff

# Overview of the Machine Learning Analysis Local Data Dictionary

This dictionary is designed to provide relevant keywords to describe
products that are the output of a machine learning model.  The machine
learning model may have been used to analyze images, sensor data, time
series, or other products in the PDS.  Examples of ML products include
a collection of per-image classification predictions, thermal
anomalies detected in infrared observations, unusual events in time
series data, etc.

This dictionary enables the specification of key descriptors about the
machine learning model that generated the product.  They include the
machine learning algorithm that was used, what data was used to train
and evaluate the model, and what performance was obtained.

Question about this dictionary can be directed to the steward, Kiri
Wagstaff (kiri.wagstaff@jpl.nasa.gov)

Suggestions for improvements or new capabilities are welcomed!  Please
create an issue here:

https://github.com/pds-data-dictionaries/PDS4-LDD-Issue-Repo

# How to Include the Machine Learning Analysis Local Data Dictionary in a PDS4 Label

A data dictionary consists of a `.xsd` schema file and a `.sch`
Schematron file.  You can obtain the latest dictionary files here:

https://pds.nasa.gov/datastandards/dictionaries

New releases of the Machine Learning Analysis dictionary are also
available here:

https://github.com/pds-data-dictionaries/ldd-ml

To use the Machine Learning Analysis dictionary with your product,
include this attribute inside the `<Product_Observational>` tag in your
PDS4 `.xml` file to access the "ml" namespace:

```xml
xmlns:ml="http://pds.nasa.gov/pds4/ml/v1"
```

These keywords are employed within the `<Discipline_Area>` tag, inside
the `<Observation_Area>` tag.  All ML-related content should be
enclosed within a `<ml:Machine_Learning>` tag.  Here is a high-level
example: 

```xml
  <Discipline_Area>
      <ml:Machine_Learning>
        <ml:Trained_Machine_Learning_Model>
          <ml:trained_model_version_id>2.0</ml:trained_model_version_id>
          <ml:trained_model_name>TestNet</ml:trained_model_name>
          <ml:Machine_Learning_Algorithm>
          ...
          </ml:Machine_Learning_Algorithm>
          <ml:Training_Set>
          ...
          </ml:Training_Set>
          <ml:Test_Set>
          ...
          </ml:Test_Set>
          <ml:Test_Performance>
          ...
          </ml:Test_Performance>
        </ml:Trained_Machine_Learning_Model>
      </ml:Machine_Learning>
    </Discipline_Area>
```

Please see the `test/` directory for additional examples.  Those with
VALID in their filenames are valid PDS4 labels.

# Organization of Classes and Attributes

![Machine Learning Analysis Local Data Dictionary class
 hierarchy](ml_ldd_class_diagram.png)

The Machine Learning Analysis Local Data Dictionary (henceforth the ML
LDD) consists of four classes.

## Trained_Machine_Learning_Model

This is the master class, which includes the name and version of the
model as well as a connection to the `Machine_Learning_Algorithm` that
was used to train it and the `Data_Set`(s) and `Performance` obtained.

```xml
<ml:Trained_Machine_Learning_Model>
   <ml:trained_model_version_id>2.0</ml:trained_model_version_id>
   <ml:trained_model_name>TestNet</ml:trained_model_name>
   <ml:Machine_Learning_Algorithm>
   ...
</ml:Trained_Machine_Learning_Model>
```

## Machine_Learning_Algorithm

This class encapsulates the name and type of learning algorithm, its
learning style, and an external reference (citation) for the
algorithm.  For example:

```xml
<ml:Machine_Learning_Algorithm>
   <ml:algorithm_learning_style>Supervised_Learning</ml:algorithm_learning_style>
   <ml:algorithm_type>Convolutional_Neural_Network_Classifier</ml:algorithm_type>
   <ml:algorithm_name>Fine-tuned AlexNet (ImageNet)</ml:algorithm_name>
   <pds:External_Reference>
      <pds:doi>10.5555/2999134</pds:doi>
      <pds:reference_text>Krizhevsky, A., Sutsekver, I., and
         Hinton, G.E., "Imagenet classification with deep              
         convolutional neural networks," Advances in Neural
         Information Processing Systems 25, p., 1097-1105, 2012.
      </pds:reference_text>
      <pds:description>AlexNet citation</pds:description>
   </pds:External_Reference>
   ...
<ml:Machine_Learning_Algorithm>
```

## Data_Set

This class contains information about a collection of data used train,
validate, or test the model.  Only the training set is required.

```xml
<ml:Training_Set>
   <ml:data_set_version_id>1.0</ml:data_set_version_id>
   <ml:data_set_size>5000</ml:data_set_size>
</ml:Training_Set>
```

## Performance

This class captures the performance obtained by the model, usually on
a test set.  Performance specification is optional.  Multiple
instances of this class can be provided to accommodate more than one
measure.

```xml
<ml:Test_Performance>
   <ml:performance_measure>Test accuracy</ml:performance_measure>
   <ml:performance_score>0.93</ml:performance_score>
</ml:Test_Performance>
```

# Definitions

Alphabetical list of attributes:

- `algorithm_learning_style`: choose `Supervised_Learning`,
  `Semisupervised_Learning`, or `Unsupervised_Learning`
  (ASCII_Short_String_Collapsed) 
- `algorithm_name`: free text name for the algorithm (ASCII_String)
- `algorithm_type`: currently only
  `Convolutional_Neural_Network_Classifier` is available, but we plan
  to expand the list as needed (ASCII_Short_String_Collapsed)
- `data_set_size`: number of items in a data set (ASCII_Integer)
- `data_set_version_id`: version of the data set (ASCII_VID)
- `performance_measure`: free text name of the measure/metric used to
  report performance (ASCII_Short_String_Collapsed)
- `performance_score`: real-valued score associated with a performance
  measure (ASCII_Real)
- `trained_model_name`: name given to the trained model
  (ASCII_Short_String_Collapsed) 
- `trained_model_version_id`: version of the model (ASCII_VID)
