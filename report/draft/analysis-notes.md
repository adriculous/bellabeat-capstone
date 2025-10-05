# Bellabeat Capstone – Analysis Notes

**Date:** 2025-09-17  
**Author:** Adrianne Padua  

This document records exploratory data analysis (EDA) insights and connects them to Bellabeat’s business opportunities.

---

## Key Findings from Fitbit Data

### 1. Activity
- Average daily steps: ~7,600 (below recommended 10,000).  
- Only ~30% of users hit 10,000 steps regularly.  
- Sedentary minutes are high compared to active minutes.  

**Implication for Bellabeat:**  
Encourage small, sustainable increases in movement (reminders, streaks, gamification).  

---

### 2. Sleep
- Data only available for April–May 2016.  
- Average sleep duration: ~6.9 hours.  
- Many users had poor sleep efficiency (<85%).  

**Implication for Bellabeat:**  
Position Bellabeat as a tool to improve **sleep hygiene** with reminders and bedtime coaching.  

---

### 3. Weight
- Sparse logging (only 98 entries across 30 users).  
- Some BMI values indicate overweight/obesity categories.  

**Implication for Bellabeat:**  
Highlight need for **consistent weight tracking**; encourage pairing wearables with nutrition logging.  

---

### 4. Cross-Dataset Insights
- **Steps vs Sleep:** Negative correlation → More steps often meant *less* sleep.  
- **Sedentary vs Calories:** Higher sedentary ratio linked to lower calorie burn.  

**Implication for Bellabeat:**  
Balance matters — it’s not just about steps, but also sleep and recovery.  

---

## Dataset Limitations Recap
- Only 30 users, short 2-month window (2016).  
- Volunteer-based sample, not representative.  
- Missing **nutrition data** (calories consumed, sugar intake).  
- Sleep data incomplete (only 1 month).  

---

### Product Opportunity
Bellabeat could:
- Add **nutrition logging** (manual input, barcode scanning, or food app integrations).  
- Track **sugar intake** and integrate directly with glucose meters.  
  - Example: Kaiser Permanente’s **KP Health Ally** app integrates with the OneTouch Verio glucose meter so that readings are synced automatically.  
  - This integration allows not only the user but also their **doctor, pharmacist, and dietitian** to access and monitor the data.  
  - Bellabeat could adopt a similar approach: sync readings via connected apps/APIs, and optionally support **A1C data uploads** from healthcare providers.  
- Expand the existing **Ivy+** product line:  
  - Enhance pregnancy tracking with **sleep, nutrition, and weight guidance**.  
- **Optional expansion:** Develop specialized devices tailored for other conditions, such as *Leaf Diabetic*.  
  - These could be **doctor-prescribed** or available as add-ons.  
  - Position Bellabeat in the **digital health / medtech space**, bridging consumer wellness and clinical care.  

---

## Next Steps
- Create polished visuals (ggplot → PNG).  
- Draft business presentation/report.  
- Frame recommendations around **closing the blind spot**: calorie balance + sugar awareness.  