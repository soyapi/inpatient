class DiagnosisTree

  # TODO: move this mapping to database (using concept sets?)

# Diagnoses for wards 3A, 3B and 4A
@@other_diagnoses = {
"SYSTEMIC" => { 
	"WASTING SYNDROME" => {},
	"SEPSIS" => {
		"PRESUMED SEPSIS ON CLINICAL GROUNDS ONLY" => {},
		"SEPSIS WITH PROVEN BACTERAEMIA" => {
			"SEPSIS WITH NON-TYPHI SALMONELLA (NTS) ISOLATED" => {},
			"SEPSIS WITH S PNEUMONIAE ISOLATED" => {},
			"SEPSIS WITH OTHER BACTERAEMIA ISOLATED" => {}
			}
		},
	"MALARIA" => {
		"UNCOMPLICATED MALARIA" => {},
		"SEVERE MALARIA" => {}
		},
	"SHOCK" => {
		"SEPTIC SHOCK" => {},
		"HAEMORRHAGIC SHOCK" => {},
		"UNEXPLAINED SHOCK"  => {}
		},
	"MALNUTRITION" => {},
	"OTHER SYSTEMIC DIAGNOSIS CONDITION" => {}
	},
	
"NERVOUS SYSTEM" => {
	"MENINGITIS" => {
		"PYOGENIC MENINGITIS" => {
			"PYOGENIC MENINGITIS WITH S PNEUMONIAE PROVEN BY GRAM STAIN OR CULTURE" => {},
			"PYOGENIC MENINGITIS WITH H INFLUENZAE PROVEN BY CULTURE" => {},
			"PYOGENIC MENINGITIS WITH E COLI PROVEN BY CULTURE" => {},
			"PYOGENIC MENINGITIS WITH N MENINGITIDIS PROVEN BY GRAM STAIN OR CULTURE" => {},
			"PYOGENIC MENINGITIS WITH OTHER ORGANISM" => {},
			"PYOGENIC MENINGITIS WITH NO ORGANISM IDENTIFIED (CSF EXAMINED)" => {},
			"PYOGENIC MENINGITIS WITH CLINICAL DIAGNOSIS ONLY (CSF NOT EXAMINED)" => {}
			},
		"CRYPTOCOCCAL MENINGITIS" => {
			"CRYPTOCOCCAL MENINGITIS PROVEN BY INDIAN INK, CULTURE OR CRAG" => {},
			"CRYPTOCOCCAL MENINGITIS ASSUMED ON SYMPTOMS, CELL COUNT" => {}
			},
		"TUBERCULOUS MENINGITIS" => {
			"TUBERCULOUS MENINGITIS PROVEN BY ZN OR CULTURE" => {},
			"TUBERCULOUS MENINGITIS ASSUMED ON BASIS OF CLINICAL CONTEXT OR CSF CELL-COUNT" => {}
			}
		},
	"RABIES" => {},
	"OTHER ENCEPHALITIS"  => {},
	"TETANUS" => {},
	"STROKE" => {
		"STROKE WITH BOTH HYPERTENSION AND DIABETES" => {},
		"STROKE WITH HYPERTENSION (NO DIABETES)" => {},
		"STROKE WITH DIABETES (NO HYPERTENSION)" => {},
		"STROKE, LIKELY EMBOLIC" => {},
		"STROKE WITH HIV THE ONLY RISK FACTOR" => {},
		"STROKE WITH OTHER IDENTIFIED CAUSE" => {},
		"UNEXPLAINED STROKE" => {}
		},
	"PARAPLEGIA" => {
		"TUBERCULOUS PARAPLEGIA" => {},
		"PYOGENIC PARAPLEGIA" => {},
		"TRANSVERSE MYELITIS" => {},
		"SYPHILIS" => {},
		"SCHISTOSOMIASIS" => {},
		"NEOPLASTIC PARAPLEGIA" => {},
		"PARAPLEGIA WITH OTHER IDENTIFIED CAUSE" => {},
		"UNEXPLAINED PARAPLEGIA"  => {}
		},
	"INTRACEREBRAL SPACE-OCCUPYING LESION" => {
		"INTRACEREBRAL TUMOUR" => {},
		"INTRACEREBRAL ABSCESS" => {},
		"TOXOPLASMOSIS" => {},
		"HAEMATOMA" => {},
		"OTHER IDENTIFIED INTRACEREBRAL LESION" => {},
		"UNIDENTIFIED INTRACEREBRAL LESION" => {}
		},
	"CONVULSIONS" => {
		"KNOWN CHRONIC EPILEPSY" => {},
		"RECENT ONSET CONVULSIONS, NOT EXPLAINED BY OTHER DIAGNOSIS" => {}
		},
	"PERIPHERAL NEUROPATHY" => {
		"NUTRITIONAL PERIPHERAL NEUROPATHY" => {},
		"DRUG-RELATED PERIPHERAL NEUROPATHY" => {},
		"PERIPHERAL NEUROPATHY WITH OTHER SPECIFIC CAUSE" => {},
		"UNEXPLAINED PERIPHERAL NEUROPATHY" => {}
		},
	"PSYCHIATRIC SYNDROME" => {
		"ACUTE CONFUSIONAL STATE" => {},
		"CHRONIC PSYCHOSIS" => {},
		"ANXIETY STATE" => {},
		"DEPRESSION" => {},
		"OTHER PSYCHIATRIC SYNDROME" => {}
		},
	"OTHER NERVOUS SYSTEM CONDITION" => {}
	},

"CARDIOVASCULAR" => {
	"HEART FAILURE" => {
		"CARDIOMYOPATHY" => {
			"CARDIOMYOPATHY WITH UNKNOWN CAUSE" => {},
			"PERI-PARTUM CARDIOMYOPATHY" => {},
			"NUTRITIONAL CARDIOMYOPATHY" => {},
			"ALCOHOLIC CARDIOMYOPATHY" => {},
			"OTHER CARDIOMYOPATHY" => {}
			},
		"HEART FAILURE SECONDARY TO HYPERTENSION" => {},
		"COR PULMONALE" => {},
		"VALVULAR DISEASE" => {},
		"OTHER CAUSE OF HEART FAILURE"  => {},
		"UNEXPLAINED HEART FAILURE" => {}
		},
	"HYPERTENSION" => {
		"ESSENTIAL HYPERTENSION" => {},
		"MALIGNANT HYPERTENSION" => {},
		"SECONDARY HYPERTENSION" => {
			"RENAL DISEASE" => {},
			"COARCTATION OF AORTA"  => {},
			"ENDOCRINE SECONDARY HYPERTENSION" => {},
			"OTHER SECONDARY HYPERTENSION" => {}
			}
		},
	"PERICARDIAL EFFUSION" => {
		"ASSUMED TUBERCULOUS PERICARDIAL EFFUSION" => {},
		"PYOGENIC PERICARDIAL EFFUSION" => {},
		"MALIGNANT PERICARDIAL EFFUSION" => {},
		"URAEMIC PERICARDIAL EFFUSION" => {},
		"OTHER PERICARDIAL EFFUSION" => {}
		},
	"ISCHAEMIC HEART DISEASE" => {},
	"OTHER CARDIOVASCULAR CONDITION" => {}
	},
	
"RESPIRATORY" => {
	"PNEUMONIA" => {
		"LOBAR PNEUMONIA" => {},
		"BRONCHOPNEUMONIA" => {}
		},
	"ASTHMA"  => {},
	"SMEAR POSITIVE TB" => {},
	"SMEAR NEGATIVE TB" => {},
	"PLEURAL EFFUSION" => {
		"ASSUMED TUBERCULOUS PLEURAL EFFUSION" => {},
		"PARA-PNEUMONIC PLEURAL EFFUSION" => {},
		"EMPYEMA" => {},
		"PLEURAL EFFUSION DUE TO KAPOSIS SARCOMA" => {},
		"PLEURAL EFFUSION DUE TO OTHER MALIGNANCY" => {},
		"PLEURAL EFFUSION DUE TO OTHER CAUSE" => {},
		"TRANSUDATE PLEURAL EFFUSION"  => {}
		},
	"PNEUMOTHORAX" => {},
	"LUNG ABSCESS" => {},
	"PCP" => {},
	"RESPIRATORY MALIGNANCY" => {
		"KAPOSIS SARCOMA" => {},
		"OTHER RESPIRATORYMALIGNANCY" => {}
		},
	"UPPER RESPIRATORY TRACT INFECTION" => {},
	"BRONCHIECTASIS" => {},
	"OTHER RESPIRATORY CONDITION" => {}
	},

"GASTROINTESTINAL" => {
	"GASTROENTERITIS" => {
		"ACUTE GASTROENTERITIS" => {},
		"CHRONIC GASTROENTERITIS" => {}
		},
	"GI HAEMORRHAGE" => {
		"BLEEDING PEPTIC ULCER"  => {},
		"BLEEDING OESOPHAGEAL VARICES" => {},
		"OTHER CAUSE OF GI BLEEDING" => {}
		},
	"PEPTIC ULCER DISEASE" => {},
	"ACUTE PANCREATITIS" => {},
	"ACUTE ABDOMINAL PAIN" => {},
	"CANDIDIASIS" => {
		"ORAL CANDIDIASIS" => {},
		"OESOPHAGEAL CANDIDIASIS" => {}
		},
	"PALATAL KAPOSI" => {},
	"ABDOMINAL MALIGNANCY" => {
		"HEPATOCELLULAR CARCINOMA" => {},
		"HEPATIC METASTASES" => {},
		"PANCREATIC CARCINOMA" => {},
		"OTHER ABDOMINAL TUMOUR" => {}
		},
	"HYPER-REACTIVE MALARIAL SPLENOMEGALY" => {},
	"LIVER DISEASE" => {
		"ACUTE HEPATITIS"  => {},
		"OBSTRUCTIVE JAUNDICE" => {},
		"PORTAL HYPERTENSION"  => {
			"PORTAL HYPERTENSION DUE TO CIRRHOSIS" => {},
			"PORTAL HYPERTENSION DUE TO SCHISTOSOMIASIS" => {}
			},
		"LIVER ABSCESS" => {
			"AMOEBIC LIVER ABSCESS" => {},
			"PYOGENIC LIVER ABSCESS" => {},
			"OTHER LIVER DISEASE" => {}
			}
		},
	"ASCITES" => {
		"ASSUMED CIRRHOSIS" => {},
		"ASSUMED TUBERCULOUS ASCITES" => {},
		"ASCITES WITH BACTERIAL INFECTION" => {}
		},
	"HELMINTH INFESTATION" => {
		"HOOKWORM" => {},
		"STRONGYLOIDES" => {},
		"ASCARIASIS" => {},
		"MANSONI" => {},
		"CYSTICERCOSIS" => {},
		"HYDATID" => {}
		},
  "OTHER GASTROINTESTINAL CONDITION" => {}
	},

"RENAL, GU" => {
	"RENAL FAILURE" => {
		"ACUTE RENAL FAILURE" => {},
		"CHRONIC RENAL FAILURE" => {}
		},
	"ACUTE NEPHRITIS" => {},
	"NEPHROTIC SYNDROME" => {},
	"URINARY TRACT INFECTION" => {},
	"S HAEMATOBIUM" => {},
	"STONE" => {
		"KIDNEY STONE" => {},
		"BLADDER STONE" => {}
		},
	"OTHER RENAL SYNDROME" => {},
	"PROSTATIC DISEASE" => {
		"BENIGN PROSTATIC HYPERTROPHY" => {},
		"CARCINOMA OF PROSTATE" => {}
		},
	"TESTICULAR DISEASE" => {
		"HYDROCELE" => {},
		"TESTICULAR TUMOUR" => {}
		},
	"OBSTETRIC DISEASE" => {
		"PELVIC INFLAMMATORY DISEASE" => {},
		"OTHER GYNAECOLOGICAL DISEASE" => {}
		}
	},
	
"METABOLIC, ENDOCRINE" => {
	"HYPOGLYCAEMIA" => {},
	"DIABETES" => {
		"HYPERGLYCAEMIA" => {},
		"DKA" => {},
		"HONK" => {}
		},
	"LACTIC ACIDOSIS" => {},
	"THYROID DISEASE" => {
		"HYPERTHYROIDISM" => {},
		"HYPOTHYROIDISM" => {}
		},
	"ADRENAL DISEASE" => {
		"CUSHINGS SYNDROME" => {},
		"ADDISONS DISEASE" => {}
		},
	"PITUITARY DISEASE" => {
		"HYPOPITUITARISM" => {},
		"ACROMEGALY" => {},
		"ADENOMA" => {}
		},
	"OTHER ENDOCRINE DISEASE" => {},
	"POISONING" => {
		"ORGANOPHOSPHATE POISONING" => {},
		"CARBON MONOXIDE POISONING" => {},
		"OTHER POISONING" => {},
		"UNIDENTIFIED POISONING" => {}
		},
	"SYSTEMIC DRUG TOXICITY" => {
		"SYSTEMIC DRUG REACTION" => {},
		"SYSTEMIC DRUG OVERDOSE" => {},
		"OTHER SYSTEMIC DRUG TOXICITY" => {}
		}
	},

"HAEMATOLOGICAL" => {
	"ANAEMIA" => {
		"MICROCYTIC ANAEMIA" => {},
		"MACROCYTIC ANAEMIA" => {},
		"PANCYTOPENIA" => {},
		"OTHER KIND OF ANAEMIA" => {}
		},
	"LEUKAEMIA" => {},
	"LYMPHOMA" => {},
	"MYELOMA" => {},
	"LYMPHADENOPATHY" => {
		"TB LYMPHADENOPATHY" => {},
		"LYMPHOMA" => {},
		"OTHER LYMPHADENOPATHY" => {},
		"UNEXPLAINED LYMPHADENOPATHY" => {}
		},
	"BLEEDING TENDENCY" => {
		"BLEEDING DUE TO IDIOPATHIC THROMBOCYTOPENIA" => {},
		"BLEEDING DUE TO DIC" => {},
		"BLEEDING DUE TO OTHER CAUSE" => {}
		},
  "OTHER HAEMATOLOGICAL CONDITION" => {}
	},

"MUSCULOSKELETAL, DERMATOLOGICAL"  => {
	"ARTHRITIS" => {
		"ACUTE BACTERIAL ARTHRITIS" => {},
		"ACUTE REACTIVE ARTHRITIS" => {},
		"CHRONIC INFLAMMATORY ARTHRITIS" => {},
		"OSTEOARTHROSIS ARTHRITIS" => {}
		},
	"SPONDYLITIS" => {
		"TB SPONDYLITIS" => {},
		"PYOGENIC SPONDYLITIS" => {},
		"NEOPLASTIC SPONDYLITIS" => {},
		"SPONDYLITIS WITH UNIDENTIFIED CAUSE" => {}
		},
	"BONE MALIGNANCY" => {
		"PRIMARY BONE MALIGNANCY" => {},
		"METASTATIC BONE MALIGNANCY" => {}
		},
	"PYOMYOSITIS" => {},
	"OSTEOMYELITIS"  => {},
	"OTHER MUSCULOSKELETAL CONDITION"  => {},
	"SKIN DISEASE" => {
		"DERMATITIS" => {},
		"PSORIASIS" => {},
		"HERPES ZOSTER" => {},
		"HERPES SIMPLEX" => {},
		"PYOGENIC SKIN INFECTION" => {},
		"SKIN INFESTATION" => {},
		"SKIN DRUG REACTION" => {},
		"SKIN MALIGNANCY" => {
			"KAPOSIS SARCOMA" => {},
			"MELANOMA" => {},
			"BASAL CELL CARCINOMA"  => {},
			"OTHER SKIN MALIGNANCY" => {}
			},
		"ALBINISM" => {},
		"OTHER SKIN CONDITION" => {}
		}
	}
}
  # diagnoses is for ward 4B
@@fourb_diagnoses = {

"SYSTEMIC" => {
	"WASTING SYNDROME"=>{},
	"SEPSIS"=>{}, 
	"MALARIA" => {
		"UNCOMPLICATED MALARIA"=>{}, 
		"SEVERE MALARIA" =>{}
		}, 
	"SHOCK" => {
		"SEPTIC SHOCK"=>{},
		"HAEMORRHAGIC SHOCK"=>{}, 
		"UNEXPLAINED SHOCK"=>{}
		},
	"MALNUTRITION"=>{},
	"OTHER SYSTEMIC DIAGNOSIS CONDITION" =>{}
	},

"NERVOUS SYSTEM" => {
	"HEADACHE"=>{}, 
	"MENINGITIS"=>{}, 
	"SUBARACHNOID HAEMORRHAGE"=>{}, 
	"STROKE"=>{}, 
	"PARAPLEGIA"=>{}, 
	"EPILEPSY"=>{}, 
	"PERIPHERAL NEUROPATHY"=>{},
	"TETANUS"=>{}, 
	"RABIES"=>{}, 
	"PSYCHIATRIC SYNDROME"=>{}, 
	"COMA"=>{}, 
	"OTHER NERVOUS SYSTEM CONDITION" =>{}
	},

"CARDIOVASCULAR" => {
	"HEART FAILURE"=>{}, 
	"ACUTE CHEST PAIN OF CARDIAC ORIGIN"=>{}, 
	"ARRHYTHMIA"=>{}, 
	"DVT"=>{}, 
	"PULMONARY EMBOLISM"=>{},
	"HYPERTENSION"=>{}, 
	"HYPERTENSIVE CRISIS"=>{}, 
	"SYNCOPE"=>{}, 
	"OTHER CARDIOVASCULAR CONDITION" =>{}
	},

"RESPIRATORY" => {
	"ACUTE BREATHLESSNESS"=>{},
	"ACUTE CHEST PAIN FROM RESPIRATORY DISEASE"=>{},
	"ACUTE URTI"=>{}, 
	"ACUTE LRTI"=>{},
	"ASTHMA"=>{},
	"CHRONIC OBSTRUCTIVE AIRWAYS DISEASE"=>{},
	"OTHER CHRONIC LUNG DISEASE"=>{}, 
	"SMEAR POSITIVE TB"=>{}, 
	"SMEAR NEGATIVE TB"=>{},
	"PLEURAL EFFUSION"=>{}, 
	"PNEUMOTHORAX"=>{}, 
	"OTHER RESPIRATORY CONDITION" =>{}},

"GASTROINTESTINAL" => {
	"ACUTE GASTROENTERITIS"=>{}, 
	"CHRONIC DIARRHOEA"=>{}, 
	"GI HAEMORRHAGE"=>{}, 
	"DYSPHAGIA"=>{}, 
	"ABDOMINAL PAIN"=>{}, 
	"JAUNDICE"=>{},
	"MASSIVE HEPATOMEGALY"=>{},
	"MASSIVE SPLENOMEGALY"=>{}, 
	"ASCITES"=>{}, 
	"OTHER GASTROINTESTINAL SYNDROME" =>{}
	},

"RENAL, GU" => {
	"RENAL FAILURE"=>{}, 
	"GENERALIZED OEDEMA"=>{}, 
	"HAEMATURIA"=>{}, 
	"URETHRAL DISCHARGE"=>{}, 
	"ACUTE RETENTION"=>{}, 
	"PYELONEPHRITIS"=>{},
	"OBSTETRIC DISEASE"=>{}, 
	"OTHER RENAL SYNDROME" =>{}
	},

"METABOLIC, ENDOCRINE" => {
	"HYPOGLYCAEMIA"=>{}, 
	"DIABETES" => {
		"HYPERGLYCAEMIA"=>{}, 
		"DKA"=>{},
		"HONK"=>{}, 
		"FOOT ULCER OR INFECTION"=>{}
		}, 
	"LACTIC ACIDOSIS"=>{}, 
	"THYROTOXIC CRISIS"=>{},
	"ALCOHOL INTOXICATION"=>{},
	"DELIRIUM TREMENS"=>{}, 
	"POISONING" => {
		"ORGANOPHOSPHATE POISONING"=>{},
		"CARBON MONOXIDE POISONING"=>{},
		"OTHER POISONING" =>{}
		},
	"SYSTEMIC DRUG TOXICITY" => {
		"SYSTEMIC DRUG REACTION"=>{}, 
		"SYSTEMIC DRUG OVERDOSE"=>{}
		},
	"HYPOTHERMIA"=>{},
	"OTHER SUSPECTED METABOLIC DISORDER"=>{}
	},

"HAEMATOLOGICAL" => {
	"SEVERE ANAEMIA"=>{}, 
	"ABNORMAL BLEEDING TENDENCY"=>{},
	"SICKLE CELL CRISIS"=>{},
	"OTHER HAEMATOLOGICAL SYNDROME" =>{}
	},

"MUSCULOSKELETAL, DERMATOLOGICAL" => {
	"ARTHRITIS" => {
		"ACUTE ARTHRITIS"=>{},
		"CHRONIC ARTHRITIS"=>{},
		"SPONDYLITIS" =>{} 
		},
	"PYOMYOSITIS"=>{},
	"OSTEOMYELITIS"=>{}, 
	"OTHER MUSCULOSKELETAL CONDITION"=>{},
	"SKIN DISEASE" => {
		"HERPES ZOSTER"=>{}, 
		"HERPES SIMPLEX"=>{}, 
		"PYOGENIC SKIN INFECTION"=>{},
		"SKIN INFESTATION"=>{}, 
		"SKIN DRUG REACTION"=>{},
		"SKIN MALIGNANCY"=>{}, 
		"ALBINISM"=>{}, 
		"OTHER SKIN CONDITION" =>{} 
		}
	} 
	}
  
  #Best tests for primary diagnoses made at wards 3A, 3B and 4A
  @@best_tests = {
"ABDOMINAL ULTRASOUND" =>[
	"HEPATOCELLULAR CARCINOMA", 
	"HEPATIC METASTASES",
	"PANCREATIC CARCINOMA"
	],
	
"BIOCHEMISTRY" => [
	"ENDOCRINE SECONDARY HYPERTENSION", 
	"CUSHINGS SYNDROME", 
	"ADDISONS DISEASE" , 
	"HYPOPITUITARISM"
	],
	
"ANY OTHER BLOOD TESTS" => [
	"BLEEDING DUE TO IDIOPATHIC THROMBOCYTOPENIA", 
	"BLEEDING DUE TO DIC" , 
	"BLEEDING DUE TO OTHER CAUSE" 
	],
	
"BLOOD CULTURE" => [
	"PRESUMED SEPSIS ON CLINICAL GROUNDS ONLY", 
	"SEPSIS WITH NON-TYPHI SALMONELLA (NTS) ISOLATED", 
	"SEPSIS WITH S PNEUMONIAE ISOLATED", 
	"SEPSIS WITH OTHER BACTERAEMIA ISOLATED" , 
	"SEPTIC SHOCK", "UNEXPLAINED SHOCK"
	],
	
"MALARIA FILM" => [
	"UNCOMPLICATED MALARIA", 
	"SEVERE MALARIA", 
	"MICROCYTIC ANAEMIA", 
	"MACROCYTIC ANAEMIA", 
	"PANCYTOPENIA" , 
	"OTHER KIND OF ANAEMIA", 
	"LEUKAEMIA"
	],
	
"BLOOD LACTATE " => [
	"LACTIC ACIDOSIS"
	],
	
"BRONCHOSCOPY" => [
	"RESPIRATORY MALIGNANCY",  
	"KAPOSIS SARCOMA",  
	"OTHER RESPIRATORYMALIGNANCY" 
	],
	
"CARDIAC ULTRASOUND" => [
	"STROKE,xLIKELY EMBOLIC"
	],
	
"CD4 COUNT" => [
	"PCP"
	],
	
"CSF FOR LAB ANALYSIS" => [
	"PYOGENIC MENINGITIS WITH S PNEUMONIAE PROVEN BY GRAM STAIN OR CULTURE", 
	"PYOGENIC MENINGITIS WITH E COLI PROVEN BY CULTURE", 
	"PYOGENIC MENINGITIS WITH N MENINGITIDIS PROVEN BY GRAM STAIN OR CULTURE", 
	"PYOGENIC MENINGITIS WITH OTHER ORGANISM",  
	"PYOGENIC MENINGITIS WITH NO ORGANISM IDENTIFIED (CSF EXAMINED)", 
	"CRYPTOCOCCAL MENINGITIS PROVEN BY INDIAN INK, CULTURE OR CRAG",
	"CRYPTOCOCCAL MENINGITIS ASSUMED ON SYMPTOMS, CELL COUNT", 
	"TUBERCULOUS MENINGITIS PROVEN BY ZN OR CULTURE", 
	"TUBERCULOUS MENINGITIS ASSUMED ON BASIS OF CLINICAL CONTEXT OR CSF CELL-COUNT", "OTHER ENCEPHALITIS" 
	],

"CT SCAN" => [
	"STROKE WITH BOTH HYPERTENSION AND DIABETES",
	"STROKE WITH HYPERTENSION (NO DIABETES)", 
	"STROKE WITH DIABETES (NO HYPERTENSION)" , 
	"STROKE WITH HIV THE ONLY RISK FACTOR" , 
	"STROKE WITH OTHER IDENTIFIED CAUSE", 
	"UNEXPLAINED STROKE", "TUBERCULOUS PARAPLEGIA", 
	"PYOGENIC PARAPLEGIA", 
	"TRANSVERSE MYELITIS", 
	"SCHISTOSOMIASIS", 
	"NEOPLASTIC PARAPLEGIA", 
	"PARAPLEGIA WITH OTHER IDENTIFIED CAUSE",  
	"UNEXPLAINED PARAPLEGIA" ,  
	"INTRACEREBRAL TUMOUR",  
	"INTRACEREBRAL ABSCESS" , 
	"TOXOPLASMOSIS", 
	"HAEMATOMA", 
	"OTHER IDENTIFIED INTRACEREBRAL LESION", 
	"UNIDENTIFIED INTRACEREBRAL LESION" , 
	"RECENT ONSET CONVULSIONS, NOT EXPLAINED BY OTHER DIAGNOSIS",
	"ACUTE CONFUSIONAL STATE", 
	"CHRONIC PSYCHOSIS",
	"BRONCHIECTASIS" , 
	"PANCREATIC CARCINOMA" , 
	"CYSTICERCOSIS", 
	"TB SPONDYLITIS", 
	"PYOGENIC SPONDYLITIS", 
	"NEOPLASTIC SPONDYLITIS", 
	"SPONDYLITIS WITH UNIDENTIFIED CAUSE"
	],

"CHEST XRAY" => [
	"RESPIRATORY MALIGNANCY", 
	"KAPOSIS SARCOMA", "OTHER RESPIRATORY MALIGNANCY", 
	"BRONCHIECTASIS"
	],

"ECG" => [
	"OTHER CARDIOMYOPATHY", 
	"HEART FAILURE SECONDARY TO HYPERTENSION", 
	"COR PULMONALE", 
	"VALVULAR DISEASE" , 
	"OTHER CAUSE OF HEART FAILURE" , 
	"UNEXPLAINED HEART FAILURE" , 
	"ISCHAEMIC HEART DISEASE" 
	],

"GASTRO-INTESTINAL ENDOSCOPY" => [
	"BLEEDING PEPTIC ULCER" , 
	"BLEEDING OESOPHAGEAL VARICES", 
	"OTHER CAUSE OF GI BLEEDING", 
	"PEPTIC ULCER DISEASE" 
	],

"OTHER BIOPSY SAMPLES" => [
	"CARCINOMA OF PROSTATE" , 
	"TESTICULAR TUMOUR" , 
	"LYMPHOMA" , 
	"TB LYMPHADENOPATHY" , 
	"OTHER LYMPHADENOPATHY", 
	"UNEXPLAINED LYMPHADENOPATHY" , 
	"KAPOSIS SARCOMA" , 
	"MELANOMA", 
	"BASAL CELL CARCINOMA" ,
	"OTHER SKIN MALIGNANCY"
	],

"LIVER FUNCTION TESTS" => [
	"ACUTE HEPATITIS"
	],

"MICROBIOLOGY" => [
	"ACUTE BACTERIAL ARTHRITIS" , 
	"PYOMYOSITIS",
	"OSTEOMYELITIS" , 
	"PYOGENIC LIVER ABSCESS",
  "PYOGENIC SPONDYLITIS",
  "SPONDYLITIS WITH UNIDENTIFIED CAUSE"
	],

"MRI SCAN" => [
	"STROKE WITH BOTH HYPERTENSION AND DIABETES" , 
	"STROKE WITH HYPERTENSION (NO DIABETES)" ,
	"STROKE WITH DIABETES (NO HYPERTENSION)",  
	"STROKE WITH HIV THE ONLY RISK FACTOR", 
	"STROKE WITH OTHER IDENTIFIED CAUSE",  
	"UNEXPLAINED STROKE" , 
	"TUBERCULOUS PARAPLEGIA" ,
	"PYOGENIC PARAPLEGIA" ,
	"TRANSVERSE MYELITIS" , 
	"SCHISTOSOMIASIS", 
	"NEOPLASTIC PARAPLEGIA" ,
	"PARAPLEGIA WITH OTHER IDENTIFIED CAUSE" ,
	"UNEXPLAINED PARAPLEGIA", 
	"INTRACEREBRAL TUMOUR" , 
	"INTRACEREBRAL ABSCESS", 
	"TOXOPLASMOSIS" , 
	"HAEMATOMA" ,
	"OTHER IDENTIFIED INTRACEREBRAL LESION" ,	
	"UNIDENTIFIED INTRACEREBRAL LESION" , 
	"RECENT ONSET CONVULSIONS, NOT EXPLAINED BY OTHER DIAGNOSIS",
	"ACUTE CONFUSIONAL STATE", 
	"CHRONIC PSYCHOSIS"
	],

"OPHTHALMOSCOPY" => [
	"MALIGNANT HYPERTENSION" 
	],

"RESPITORY FUNCTION TESTS" => [
	"ASTHMA" 
	],

"ANY OTHER TESTS ON BODY SAMPLES" => [
	"PYOGENIC PERICARDIAL EFFUSION", 
	"MALIGNANT PERICARDIAL EFFUSION" , 
	"ASSUMED TUBERCULOUS PLEURAL EFFUSION" , 
	"PARA-PNEUMONIC PLEURAL EFFUSION" , 
	"EMPYEMA" , 
	"PLEURAL EFFUSION DUE TO KAPOSIS SARCOMA" , 
	"PLEURAL EFFUSION DUE TO OTHER MALIGNANCY" , 
	"TRANSUDATE PLEURAL EFFUSION" , 
	"ASSUMED CIRRHOSIS", 
	"ASSUMED TUBERCULOUS ASCITES", 
	"ASCITES WITH BACTERIAL INFECTION"
	],

"SEROLOGY" => [
	"SYPHILIS"
	],

"SKULL XRAY" => [
	"ACROMEGALY", 
	"ADENOMA" 
	],

"SPUTUM FOR AAFB" => [
	"SMEAR POSITIVE TB", 
	"SMEAR NEGATIVE TB"
	],

"STOOL TEST" => [
	"HOOKWORM", 
	"STRONGYLOIDES" , 
	"ASCARIASIS", 
	"MANSONI"
	],

"T3/T4" => [
	"HYPERTHYROIDISM", 
	"HYPOTHYROIDISM" 
	],

"UREA, CREATININE AND ELECTROLYTES" => [
	"RENAL DISEASE" , 
	"URAEMIC PERICARDIAL EFFUSION", 
	"ACUTE RENAL FAILURE",
	"CHRONIC RENAL FAILURE"
	],

"URINE DIPSTICK" => [
	"ACUTE NEPHRITIS" ,
	"NEPHROTIC SYNDROME"
	],

"URINE MICROSCOPY" => [
	"URINARY TRACT INFECTION" ,
	"S HAEMATOBIUM"
	],

"ULTRASOUND" => [
	"CARDIOMYOPATHY", 
	"CARDIOMYOPATHY WITH UNKNOWN CAUSE", 
	"PERI-PARTUM CARDIOMYOPATHY", 
	"NUTRITIONAL CARDIOMYOPATHY", 
	"ALCOHOLIC CARDIOMYOPATHY", 
	"OTHER CARDIOMYOPATHY",
	"HEART FAILURE SECONDARY TO HYPERTENSION", 
	"COR PULMONALE", 
	"VALVULAR DISEASE",	
	"OTHER CAUSE OF HEART FAILURE" , 
	"UNEXPLAINED HEART FAILURE", 
	"RENAL DISEASE", 
	"ASSUMED TUBERCULOUS PERICARDIAL EFFUSION", 
	"PYOGENIC PERICARDIAL EFFUSION" , 
	"MALIGNANT PERICARDIAL EFFUSION",  
	"URAEMIC PERICARDIAL EFFUSION", 
	"OTHER PERICARDIAL EFFUSION" , 
	"OBSTRUCTIVE JAUNDICE", 
	"PORTAL HYPERTENSION" , 
	"PORTAL HYPERTENSION DUE TO CIRRHOSIS" ,
	"PORTAL HYPERTENSION DUE TO SCHISTOSOMIASIS", 
	"AMOEBIC LIVER ABSCESS", 
	"PYOGENIC LIVER ABSCESS",
	"OTHER LIVER DISEASE" , 
	"ACUTE RENAL FAILURE", 
	"CHRONIC RENAL FAILURE", 
	"ACUTE NEPHRITIS",  
	"NEPHROTIC SYNDROME" , 
	"KIDNEY STONE" ,
	"BLADDER STONE" , 
	"PELVIC INFLAMMATORY DISEASE", 
	"PYOMYOSITIS"
	],

"OTHER IMAGING" => [
	"TUBERCULOUS PARAPLEGIA", 
	"PYOGENIC PARAPLEGIA", 
	"TRANSVERSE MYELITIS", 
	"SCHISTOSOMIASIS", 
	"NEOPLASTIC PARAPLEGIA", 
	"PARAPLEGIA WITH OTHER IDENTIFIED CAUSE", 
	"UNEXPLAINED PARAPLEGIA", 
	"COARCTATION OF AORTA" , 
	"LOBAR PNEUMONIA" , 
	"BRONCHOPNEUMONIA", 
	"SMEAR POSITIVE TB", 
	"SMEAR NEGATIVE TB",  
	"ASSUMED TUBERCULOUS PLEURAL EFFUSION",
	"PARA-PNEUMONIC PLEURAL EFFUSION", 
	"EMPYEMA", 
	"PLEURAL EFFUSION DUE TO KAPOSIS SARCOMA",  
	"PLEURAL EFFUSION DUE TO OTHER MALIGNANCY",  
	"PLEURAL EFFUSION DUE TO OTHER CAUSE",
	"TRANSUDATE PLEURAL EFFUSION", 
	"PNEUMOTHORAX", 
	"LUNG ABSCESS", 
	"PCP", 
	"CYSTICERCOSIS", 
	"HYDATID", 
	"KIDNEY STONE",
	"BLADDER STONE", 
	"OSTEOARTHROSIS ARTHRITIS", 
	"TB SPONDYLITIS",	
	"PYOGENIC SPONDYLITIS", 
	"NEOPLASTIC SPONDYLITIS", 
	"SPONDYLITIS WITH UNIDENTIFIED CAUSE",
	"PRIMARY BONE MALIGNANCY", 
	"METASTATIC BONE MALIGNANCY", 
	"OSTEOMYELITIS"
	]
}

  def self.other_wards
    @@other_diagnoses
  end

  def self.fourb_wards
    @@fourb_diagnoses
  end

  def self.best_tests
    @@best_tests
  end

  def self.final_keysr(diagnosis_hash = self.other_wards, deep_list = {})
    diagnosis_hash.each do |k,v|
      if v.blank?
        deep_list[k] = 0
      else 
        final_keysr(v, deep_list)
      end
    end
    deep_list
  end

end

=begin
class Hash

  @@deep_list = {}

  def final_keysr
    self.each do |k,v|
      if v.blank?
        @@deep_list[k.split(' ').join(' ')] = 0
      elsif v.class == Hash
        v.final_keysr
      end
    end
    @@deep_list
  end
end
=end
