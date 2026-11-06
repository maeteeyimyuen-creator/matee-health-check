# ระบบลงทะเบียนและประเมินความเสี่ยงสุขภาพเบื้องต้น
### Patient Health Risk Assessment and Registration System

เว็บแอปพลิเคชันสำหรับการคัดกรองผู้ป่วยเบื้องต้นก่อนเข้ารับการรักษา พัฒนาด้วย **React** และ **Material-UI (MUI)** พร้อมใช้งานได้ทันทีบน **GitHub Pages**

---

## 📋 คุณสมบัติเด่นของระบบ (Features)

1. **โครงสร้างและส่วนติดต่อผู้ใช้งาน (MUI Components)**:
   - **Structure & Layout**: `Container`, `Paper`, `Grid`, `Stack`
   - **Inputs**: `TextField` (รับค่าตัวอักษรและตัวเลข), `RadioGroup` / `Radio` (พฤติกรรมเสี่ยง), `Select` / `MenuItem` (กลุ่มโรคประจำตัว), `Button` (ประเมินผล และ ล้างข้อมูล)
   - **Feedback & Displays**: `Alert` (แจ้งเตือนข้อผิดพลาด), `Dialog` / `DialogTitle` / `DialogContent` / `DialogActions` (หน้าต่างสรุปผลการประเมิน), `Chip` (ป้ายสถานะระดับความเสี่ยงด้วยสีสัญลักษณ์)

2. **การตรวจสอบความถูกต้องของข้อมูล (Input Validation)**:
   - ตรวจสอบช่องว่างและช่วงข้อมูลที่สมเหตุสมผล (ชื่อ-นามสกุล, อายุ 1-120 ปี, น้ำหนัก, ส่วนสูง)
   - แสดงกล่องข้อความเตือน (`Alert`) ทันทีหากข้อมูลไม่ถูกต้องและระงับการประเมินผล

3. **การคำนวณและประเมินระดับความเสี่ยง (Risk Assessment Logic)**:
   - คำนวณค่าดัชนีมวลกาย:
     $$\text{BMI} = \frac{\text{น้ำหนัก (kg)}}{(\text{ส่วนสูง (cm)} / 100)^2}$$
   - ประเมินผลร่วมกับพฤติกรรมความเสี่ยง (การสูบบุหรี่) และกลุ่มโรคประจำตัวเรื้อรัง
   - จัดจำแนกออกเป็น 3 ระดับ:
     - 🟢 **ความเสี่ยงต่ำ (Low Risk)**
     - 🟡 **ความเสี่ยงปานกลาง (Moderate Risk)**
     - 🔴 **ความเสี่ยงสูง (High Risk)**

4. **การสรุปผลและรายงาน (Result Summary & Print)**:
   - หน้าต่าง `Dialog` สรุปข้อมูลผู้ป่วย, ผลการคำนวณ BMI, ปัจจัยเสี่ยง และคำแนะนำการปฏิบัติตนเฉพาะบุคคล
   - รองรับการกดพิมพ์รายงาน (Print / Save to PDF) จัดหน้าสำหรับพิมพ์เอกสารทางการแพทย์โดยเฉพาะ

---

## 🚀 วิธีเปิดใช้งานบน GitHub Pages

### ขั้นตอนที่ 1: ตรวจสอบและ Commit โค้ดในเครื่อง
```bash
git init
git add .
git commit -m "feat: complete patient health risk assessment web app with MUI"
```

### ขั้นตอนที่ 2: นำโค้ดขึ้น GitHub Repository
1. เข้าไปที่ [GitHub.com](https://github.com) แล้วกด **New repository**
2. ตั้งชื่อ Repository เช่น `patient-risk-assessment` หรือ `matee-health-check`
3. ตั้งค่าเป็น **Public** แล้วกด **Create repository**
4. รันคำสั่งเชื่อมต่อไปยัง GitHub (แทนที่ `<USERNAME>` และ `<REPO_NAME>` ด้วยชื่อของคุณ):
```bash
git branch -M main
git remote add origin https://github.com/<USERNAME>/<REPO_NAME>.git
git push -u origin main
```

### ขั้นตอนที่ 3: เปิดใช้งาน GitHub Pages
1. ในหน้า GitHub Repository ของคุณ ไปที่แถบเมนู **Settings** (การตั้งค่า)
2. เลื่อนเมนูด้านซ้ายไปที่หัวข้อ **Pages**
3. ภายใต้หัวข้อ **Build and deployment**:
   - **Source**: เลือก `Deploy from a branch`
   - **Branch**: เลือก `main` และโฟลเดอร์ `/ (root)`
4. กดปุ่ม **Save**
5. รอประมาณ 1 - 2 นาที GitHub Pages จะแสดงลิงก์เว็บไซต์ของคุณ เช่น:
   `https://<USERNAME>.github.io/<REPO_NAME>/`
