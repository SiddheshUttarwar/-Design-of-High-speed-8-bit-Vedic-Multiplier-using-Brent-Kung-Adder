# ⚡ Design of High-Speed 8-bit Vedic Multiplier using Brent Kung Adder  

[![IEEE Paper](https://img.shields.io/badge/IEEE-Published-blue)](https://ieeexplore.ieee.org/document/9984591)  
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)  
[![Language](https://img.shields.io/badge/Verilog-HDL-orange)]()  
[![Tool](https://img.shields.io/badge/Simulation-Vivado%2014.7-blue)]()  

---

## 📖 Abstract  

Multiplication is a critical operation in **Digital Signal Processing (DSP) systems**.  
This project implements a **high-speed 8-bit Vedic Multiplier** using the **Urdhva Tiryagbhyam algorithm** from Vedic mathematics, optimized with a **Brent Kung Adder (BKA)** for fast carry computation.  

✅ Reduced **delay, complexity, and area** compared to Array, Dadda, Wallace, and Ripple-Carry-based multipliers.  
✅ Designed in **Verilog HDL** and simulated on **Xilinx Vivado 14.7**.  
✅ Outperforms existing multipliers in **speed and efficiency**.  

---

## 🏗️ Architecture  

- Uses **Urdhva Tiryagbhyam sutra** for multiplication.  
- Employs **Brent Kung Parallel Prefix Adders** to reduce propagation delay.  
- Structure:  
  - Four 4-bit Vedic Multipliers  
  - Two 8-bit BKAs + One 4-bit BKA  
  - AND + OR gates for partial products combination  

📊 **Comparison with Other Multipliers:**  

| Multiplier              | Logic Levels | Delay (ns) |
|--------------------------|--------------|------------|
| Array Multiplier         | 19           | 12.934     |
| Dadda Multiplier         | 16           | 9.745      |
| Wallace Tree Multiplier  | 12           | 7.815      |
| Existed Vedic Multiplier | 15           | 9.130      |
| **Proposed (This Work)** | **13**       | **7.762**  |

---

## 🔬 Results  

- RTL schematic and simulation waveforms verified in **Vivado 14.7**.  
- Achieved **higher speed** with reduced **logic levels** compared to conventional multipliers.  

**Simulation Output Example:**  

**RTL Schematic for Proposed 8*8 Vedic Multiplier**
<img width="806" height="391" alt="image" src="https://github.com/user-attachments/assets/452ffa4f-3361-48e3-95f8-8fa85a562e87" />

**Simulation Waveform of Proposed 8*8 Vedic Multiplier**
<img width="686" height="81" alt="image" src="https://github.com/user-attachments/assets/152f09a3-2295-43ec-978d-a37f0f088d45" />

**Comparision of the proposed 8 x 8 Vedic Multiplier with other multipliers**
<img width="663" height="378" alt="image" src="https://github.com/user-attachments/assets/a8d5a4c4-79e9-4551-85e3-f13bfbcadb62" />


---

## 📄 Publication  

This work was presented at the **13th International Conference on Computing Communication and Networking Technologies (ICCCNT 2022)** and published by **IEEE**.  
link : <a herf="https://ieeexplore.ieee.org/document/9984591"/>

📑 Citation (BibTeX):  

```bibtex
@inproceedings{uttarwar2022vedic,
  author    = {Aruru Sai Kumar and U. Siddhesh and N. Sai Kiran and K. Bhavitha},
  title     = {Design of High-Speed 8-bit Vedic Multiplier using Brent Kung Adders},
  booktitle = {13th International Conference on Computing Communication and Networking Technologies (ICCCNT)},
  year      = {2022},
  publisher = {IEEE},
  doi       = {10.1109/ICCCNT54827.2022.9984591}
}
