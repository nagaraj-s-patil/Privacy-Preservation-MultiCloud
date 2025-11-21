
---

# **Privacy Preservation in Multi-Cloud Secure Data Fusion for Infectious-Disease Analysis**

This project implements a secure, privacy-preserving framework to detect infectious-disease hotspots by fusing user **location data** and **health data** stored across two different cloud providers.
The design is based on the IEEE TMC research paper. 

---

## **📌 Overview**

Traditional disease-monitoring systems struggle with:

* Low participation
* Privacy concerns
* Limited, noisy data

This project solves that by:

* Combining multi-cloud data
* Using secure multi-party computation (SMC)
* Applying Key-Oblivious Inner Product Encryption (KOIPE)
* Ensuring only **aggregated statistics** are visible
* Preventing inference attacks on users
* Incentivizing user participation

---

## **🎯 Key Features**

### **1. Secure Multi-Cloud Architecture**

System entities:

* **Trusted Authority (TA)**
* **Location Cloud (LC)**
* **Health Cloud (HC)**
* **Public Health Office (PHO)**
* **Users**



---

### **2. Cryptographic Security**

* Anonymous Group Signatures (Sybil attack protection)
* Identity-Based Encryption (anonymous linking)
* Paillier Homomorphic Encryption
* K-Oblivious Inner Product Encryption (KOIPE)



---

### **3. Kulldorff Scan Statistic**

Used to detect **spatial hotspots** using:

* Population count
* Number of infected users



---

## **🛠 How It Works**

### **Step 1 — Collect Data**

LC collects GPS location.
HC collects health status.

### **Step 2 — Secure Data Fusion**

PHO sends encrypted queries → LC & HC process → return encrypted aggregated results.

### **Step 3 — Hotspot Detection**

PHO runs Kulldorff scan to find regions with statistically elevated disease density.

---

## **⚠️ Privacy Risk**

Although individual data is hidden, repeated statistical results can leak information.

A **Bayesian inference attack** can:

* Track movement patterns
* Combine multi-time statistics
* Infer someone’s health status



---

## **🛡 Countermeasure — Game-Theoretic Model**

A Stackelberg Bayesian Game is used to:

* Incentivize users to contribute data
* Form larger anonymity groups
* Reduce individual privacy loss


---

## **📊 Performance**

Benchmarked using:

* **Paillier 2048-bit implementation**
* **SaTScan** hotspot detection
* Real datasets including:

  * Gowalla mobility
  * NY State cancer registry



---

## **📁 Suggested Project Structure**

```
/src
  /crypto
  /smc
  /koipe
  /utils
  /models
/data
/docs
README.md
LICENSE
```

---

## **🚀 How to Run**

1. Install Paillier cryptosystem library.
2. Configure HC & LC data sources.
3. Run SMC fusion module to compute:

   * Disease count per grid
   * Population per grid
4. Run Kulldorff spatial scan using SaTScan or custom code.
5. (Optional) Run Bayesian inference simulator.
6. Use game-theory module to determine incentive.



