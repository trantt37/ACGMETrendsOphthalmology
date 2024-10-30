# Install and load the necessary libraries
install.packages("readxl")
install.packages("tidyverse")
install.packages("modifiedmk")
install.packages("car")
library(readxl)
library(tidyverse)
library(modifiedmk)
library(car)

# Analyze demographic trends in ophthalmology
ACGMETrend <- data.frame(read_excel("OpthoDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

opthoDemRawSig <- data.frame("OpthoDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                             "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
opthoDemPercSig <- data.frame("OpthoDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                              "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze demographic trends in family medicine
ACGMETrend <- data.frame(read_excel("FamDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

famDemRawSig <- data.frame("FamDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                           "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
famDemPercSig <- data.frame("FamDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                            "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze demographic trends in surgery
ACGMETrend <- data.frame(read_excel("SurgDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

surgDemRawSig <- data.frame("SurgDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                            "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
surgDemPercSig <- data.frame("SurgDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                             "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze demographic trends in dermatology
ACGMETrend <- data.frame(read_excel("DermDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

dermDemRawSig <- data.frame("DermDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                            "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
dermDemPercSig <- data.frame("DermDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                             "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze demographic trends in anesthesiology
ACGMETrend <- data.frame(read_excel("AnesDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

anesDemRawSig <- data.frame("AnesDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                            "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
anesDemPercSig <- data.frame("AnesDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                             "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze demographic trends in radiology
ACGMETrend <- data.frame(read_excel("RadDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

radDemRawSig <- data.frame("RadDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                           "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
radDemPercSig <- data.frame("RadDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                            "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze demographic trends in pediatrics
ACGMETrend <- data.frame(read_excel("PedDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

pedDemRawSig <- data.frame("PedDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                           "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
pedDemPercSig <- data.frame("PedDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                            "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze demographic trends in medicine
ACGMETrend <- data.frame(read_excel("MedDem.xlsx"))
MKTestWhite <- mmkh(ACGMETrend$WhiteNonHispanic)
MKTestWhitePerc <-mmkh(ACGMETrend$WhiteNonHispanicPercentage)

MKTestAsian <- mmkh(ACGMETrend$AsianPacificIslander)
MKTestAsianPerc <- mmkh(ACGMETrend$AsianPacificIslanderPercentage)

MKTestHispanic <- mmkh(ACGMETrend$Hispanic)
MKTestHispanicPerc <- mmkh(ACGMETrend$HispanicPercentage)

MKTestBlack <- mmkh(ACGMETrend$BlackNonHispanic)
MKTestBlackPerc <- mmkh(ACGMETrend$BlackNonHispanicPercentage)

MKTestNatAm <- mmkh(ACGMETrend$NativeAmericanAlaskan)
MKTestNatAmPerc <- mmkh(ACGMETrend$NativeAmericanAlaskanPercentage)

MKTestOther <- mmkh(ACGMETrend$Other)
MKTestOtherPerc <- mmkh(ACGMETrend$OtherPercentage)

MKTestUnknown <- mmkh(ACGMETrend$Unknown)
MKTestUnknownPerc <- mmkh(ACGMETrend$UnknownPercentage)

medDemRawSig <- data.frame("MedDemographicTotalNumber)"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"),
                           "pvalue"=c(MKTestWhite[2],MKTestAsian[2],MKTestHispanic[2],MKTestBlack[2], MKTestNatAm[2], MKTestOther[2], MKTestUnknown[2]))
medDemPercSig <- data.frame("MedDemographicPercentage"=c("WhiteNonHispanic","AsianPacificIslander", "Hispanic", "BlackNonHispanic","NativeAmericanAlaskan","Other","Unknown"), 
                            "pvalue"=c(MKTestWhitePerc[2],MKTestAsianPerc[2],MKTestHispanicPerc[2],MKTestBlackPerc[2], MKTestNatAmPerc[2], MKTestOtherPerc[2], MKTestUnknownPerc[2]))

# Analyze gender trends in ophthalmology
ACGMETrend <- data.frame(read_excel("OpthoGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

opthoGenCountSig <- data.frame("OpthoGenderTotalNumber"=c("Female","Male","Not Reported"), 
                               "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
opthoGenPercSig <- data.frame("OpthoGenderPercentage"=c("Female","Male","Not Reported"), 
                              "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
opthoResidencySpotsSig <- data.frame("OpthoResidencyStats"=c("Total Programs","Total Residents"), 
                                     "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Durbin Watson test on sample ophthalmology data to test for temporal autocorrelation
model <- lm(FemalePerc ~ Year, data=ACGMETrend)
durbinWatsonTest(model)

# Analyze gender trends in surgery
ACGMETrend <- data.frame(read_excel("SurgGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

surgGenCountSig <- data.frame("SurgGenderTotalNumber"=c("Female","Male","Not Reported"), 
                              "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
surgGenPercSig <- data.frame("SurgGenderPercentage"=c("Female","Male","Not Reported"), 
                             "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
surgResidencySpotsSig <- data.frame("SurgResidencyStats"=c("Total Programs","Total Residents"), 
                                    "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Analyze gender trends in dermatology
ACGMETrend <- data.frame(read_excel("DermGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

dermGenCountSig <- data.frame("DermGenderTotalNumber"=c("Female","Male","Not Reported"), 
                              "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
dermGenPercSig <- data.frame("DermGenderPercentage"=c("Female","Male","Not Reported"), 
                             "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
dermResidencySpotsSig <- data.frame("DermResidencyStats"=c("Total Programs","Total Residents"), 
                                    "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Analyze gender trends in anesthesiology
ACGMETrend <- data.frame(read_excel("AnesGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

anesGenCountSig <- data.frame("AnesGenderTotalNumber"=c("Female","Male","Not Reported"), 
                              "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
anesGenPercSig <- data.frame("AnesGenderPercentage"=c("Female","Male","Not Reported"), 
                             "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
anesResidencySpotsSig <- data.frame("AnesResidencyStats"=c("Total Programs","Total Residents"), 
                                    "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Analyze gender trends in radiology
ACGMETrend <- data.frame(read_excel("RadGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

radGenCountSig <- data.frame("RadGenderTotalNumber"=c("Female","Male","Not Reported"), 
                             "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
radGenPercSig <- data.frame("RadGenderPercentage"=c("Female","Male","Not Reported"), 
                            "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
radResidencySpotsSig <- data.frame("RadResidencyStats"=c("Total Programs","Total Residents"), 
                                   "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Analyze gender trends in pediatrics
ACGMETrend <- data.frame(read_excel("PedGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

pedGenCountSig <- data.frame("PedGenderTotalNumber"=c("Female","Male","Not Reported"), 
                             "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
pedGenPercSig <- data.frame("PedGenderPercentage"=c("Female","Male","Not Reported"), 
                            "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
pedResidencySpotsSig <- data.frame("PedResidencyStats"=c("Total Programs","Total Residents"), 
                                   "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Analyze gender trends in medicine
ACGMETrend <- data.frame(read_excel("MedGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

medGenCountSig <- data.frame("MedGenderTotalNumber"=c("Female","Male","Not Reported"), 
                             "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
medGenPercSig <- data.frame("MedGenderPercentage"=c("Female","Male","Not Reported"), 
                            "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
medResidencySpotsSig <- data.frame("MedResidencyStats"=c("Total Programs","Total Residents"), 
                                   "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Analyze gender trends in family medicine
ACGMETrend <- data.frame(read_excel("FamGen.xlsx"))
MKTestTotalProg <- mmkh(ACGMETrend$Total.Programs)
MKTestTotalResident <- mmkh(ACGMETrend$Total.Residents)

MKTestFemNum <- mmkh(ACGMETrend$FemaleNum)
MKTestFemPerc <- mmkh(ACGMETrend$FemalePerc)

MKTestMaleNum <- mmkh(ACGMETrend$MaleNum)
MKTestMalePerc <- mmkh(ACGMETrend$MalePerc)

MKTestNotReportedNum <- mmkh(ACGMETrend$NaNum)
MKTestNotReportedPerc <- mmkh(ACGMETrend$NaPerc)

famGenCountSig <- data.frame("FamGenderTotalNumber"=c("Female","Male","Not Reported"), 
                             "pvalue" = c(MKTestFemNum[2],MKTestMaleNum[2],MKTestNotReportedNum[2]))
famGenPercSig <- data.frame("FamGenderPercentage"=c("Female","Male","Not Reported"), 
                            "pvalue" = c(MKTestFemPerc[2],MKTestMalePerc[2],MKTestNotReportedPerc[2]))
famResidencySpotsSig <- data.frame("FamResidencyStats"=c("Total Programs","Total Residents"), 
                                   "pvalue" = c(MKTestTotalProg[2],MKTestTotalResident[2]))

# Creating data frames to use in gender t tests
ACGMETrend <- data.frame(read_excel("OpthoGen.xlsx"))
OpthoMale <- ACGMETrend$MalePerc
OpthoFemale <- ACGMETrend$FemalePerc
OpthoOtherG <- ACGMETrend$NaPerc

ACGMETrend <- data.frame(read_excel("MedGen.xlsx"))
IMMale <- ACGMETrend$MalePerc
IMFemale <- ACGMETrend$FemalePerc
IMOtherG <- ACGMETrend$NaPerc

ACGMETrend <- data.frame(read_excel("PedGen.xlsx"))
PedMale <- ACGMETrend$MalePerc
PedFemale <- ACGMETrend$FemalePerc
PedOtherG <- ACGMETrend$NaPerc

ACGMETrend <- data.frame(read_excel("RadGen.xlsx"))
RadMale <- ACGMETrend$MalePerc
RadFemale <- ACGMETrend$FemalePerc
RadOtherG <- ACGMETrend$NaPerc

ACGMETrend <- data.frame(read_excel("AnesGen.xlsx"))
AnesMale <- ACGMETrend$MalePerc
AnesFemale <- ACGMETrend$FemalePerc
AnesOtherG <- ACGMETrend$NaPerc

ACGMETrend <- data.frame(read_excel("DermGen.xlsx"))
DermMale <- ACGMETrend$MalePerc
DermFemale <- ACGMETrend$FemalePerc
DermOtherG <- ACGMETrend$NaPerc

ACGMETrend <- data.frame(read_excel("SurgGen.xlsx"))
SurgMale <- ACGMETrend$MalePerc
SurgFemale <- ACGMETrend$FemalePerc
SurgOtherG <- ACGMETrend$NaPerc

t_tests <- list(
  t.test(OpthoMale, IMMale),
  t.test(OpthoMale, PedMale),
  t.test(OpthoMale, RadMale),
  t.test(OpthoMale, AnesMale),
  t.test(OpthoMale, DermMale),
  t.test(OpthoMale, SurgMale)
)

#T tests between optho and other specialties comparing gender
# Extract values and create a data frame
MaleGenderTTest <- data.frame(
  "Specialty compared to Ophthalmology Male Percentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoFemale, IMFemale),
  t.test(OpthoFemale, PedFemale),
  t.test(OpthoFemale, RadFemale),
  t.test(OpthoFemale, AnesFemale),
  t.test(OpthoFemale, DermFemale),
  t.test(OpthoFemale, SurgFemale)
)

# Extract values and create a data frame
FemaleGenderTTest <- data.frame(
  "Specialty compared to Ophthalmology Female Percentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_Female" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoOtherG, IMOtherG),
  t.test(OpthoOtherG, PedOtherG),
  t.test(OpthoOtherG, RadOtherG),
  t.test(OpthoOtherG, AnesOtherG),
  t.test(OpthoOtherG, DermOtherG),
  t.test(OpthoOtherG, SurgOtherG)
)

# Extract values and create a data frame
OtherGenderTTest <- data.frame(
  "Specialty compared to Ophthalmology Other Percentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_Other" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

# Creating data frames to use in demographic t tests
ACGMETrend <- data.frame(read_excel("OpthoDem.xlsx"))
OpthoWhiteNonHispanic <- ACGMETrend$WhiteNonHispanicPercentage
OpthoAsianPacificIslander <- ACGMETrend$AsianPacificIslanderPercentage
OpthoHispanic <- ACGMETrend$HispanicPercentage
OpthoBlackNonHispanic <- ACGMETrend$BlackNonHispanicPercentage
OpthoNativeAmericanAlaskan <- ACGMETrend$NativeAmericanAlaskanPercentage
OpthoOther <- ACGMETrend$OtherPercentage
OpthoUnknown <- ACGMETrend$UnknownPercentage

ACGMETrend <- data.frame(read_excel("MedDem.xlsx"))
IMWhiteNonHispanic <- ACGMETrend$WhiteNonHispanicPercentage
IMAsianPacificIslander <- ACGMETrend$AsianPacificIslanderPercentage
IMHispanic <- ACGMETrend$HispanicPercentage
IMBlackNonHispanic <- ACGMETrend$BlackNonHispanicPercentage
IMNativeAmericanAlaskan <- ACGMETrend$NativeAmericanAlaskanPercentage
IMOther <- ACGMETrend$OtherPercentage
IMUnknown <- ACGMETrend$UnknownPercentage

ACGMETrend <- data.frame(read_excel("PedDem.xlsx"))
PedWhiteNonHispanic <- ACGMETrend$WhiteNonHispanicPercentage
PedAsianPacificIslander <- ACGMETrend$AsianPacificIslanderPercentage
PedHispanic <- ACGMETrend$HispanicPercentage
PedBlackNonHispanic <- ACGMETrend$BlackNonHispanicPercentage
PedNativeAmericanAlaskan <- ACGMETrend$NativeAmericanAlaskanPercentage
PedOther <- ACGMETrend$OtherPercentage
PedUnknown <- ACGMETrend$UnknownPercentage

ACGMETrend <- data.frame(read_excel("RadDem.xlsx"))
RadWhiteNonHispanic <- ACGMETrend$WhiteNonHispanicPercentage
RadAsianPacificIslander <- ACGMETrend$AsianPacificIslanderPercentage
RadHispanic <- ACGMETrend$HispanicPercentage
RadBlackNonHispanic <- ACGMETrend$BlackNonHispanicPercentage
RadNativeAmericanAlaskan <- ACGMETrend$NativeAmericanAlaskanPercentage
RadOther <- ACGMETrend$OtherPercentage
RadUnknown <- ACGMETrend$UnknownPercentage

ACGMETrend <- data.frame(read_excel("AnesDem.xlsx"))
AnesWhiteNonHispanic <- ACGMETrend$WhiteNonHispanicPercentage
AnesAsianPacificIslander <- ACGMETrend$AsianPacificIslanderPercentage
AnesHispanic <- ACGMETrend$HispanicPercentage
AnesBlackNonHispanic <- ACGMETrend$BlackNonHispanicPercentage
AnesNativeAmericanAlaskan <- ACGMETrend$NativeAmericanAlaskanPercentage
AnesOther <- ACGMETrend$OtherPercentage
AnesUnknown <- ACGMETrend$UnknownPercentage

ACGMETrend <- data.frame(read_excel("DermDem.xlsx"))
DermWhiteNonHispanic <- ACGMETrend$WhiteNonHispanicPercentage
DermAsianPacificIslander <- ACGMETrend$AsianPacificIslanderPercentage
DermHispanic <- ACGMETrend$HispanicPercentage
DermBlackNonHispanic <- ACGMETrend$BlackNonHispanicPercentage
DermNativeAmericanAlaskan <- ACGMETrend$NativeAmericanAlaskanPercentage
DermOther <- ACGMETrend$OtherPercentage
DermUnknown <- ACGMETrend$UnknownPercentage

ACGMETrend <- data.frame(read_excel("SurgDem.xlsx"))
SurgWhiteNonHispanic <- ACGMETrend$WhiteNonHispanicPercentage
SurgAsianPacificIslander <- ACGMETrend$AsianPacificIslanderPercentage
SurgHispanic <- ACGMETrend$HispanicPercentage
SurgBlackNonHispanic <- ACGMETrend$BlackNonHispanicPercentage
SurgNativeAmericanAlaskan <- ACGMETrend$NativeAmericanAlaskanPercentage
SurgOther <- ACGMETrend$OtherPercentage
SurgUnknown <- ACGMETrend$UnknownPercentage


#T tests between optho and other specialties comparing demographics
t_tests <- list(
  t.test(OpthoWhiteNonHispanic, IMWhiteNonHispanic),
  t.test(OpthoWhiteNonHispanic, PedWhiteNonHispanic),
  t.test(OpthoWhiteNonHispanic, RadWhiteNonHispanic),
  t.test(OpthoWhiteNonHispanic, AnesWhiteNonHispanic),
  t.test(OpthoWhiteNonHispanic, DermWhiteNonHispanic),
  t.test(OpthoWhiteNonHispanic, SurgWhiteNonHispanic)
)

# Extract values and create a data frame
WhiteNonHispanicTTest <- data.frame(
  "Specialty compared to Ophthalmology WhiteNonHispanicPercentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoAsianPacificIslander, IMAsianPacificIslander),
  t.test(OpthoAsianPacificIslander, PedAsianPacificIslander),
  t.test(OpthoAsianPacificIslander, RadAsianPacificIslander),
  t.test(OpthoAsianPacificIslander, AnesAsianPacificIslander),
  t.test(OpthoAsianPacificIslander, DermAsianPacificIslander),
  t.test(OpthoAsianPacificIslander, SurgAsianPacificIslander)
)

# Extract values and create a data frame
AsianPacificIslanderTTest <- data.frame(
  "Specialty compared to Ophthalmology AsianPacificIslanderPercentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoHispanic, IMHispanic),
  t.test(OpthoHispanic, PedHispanic),
  t.test(OpthoHispanic, RadHispanic),
  t.test(OpthoHispanic, AnesHispanic),
  t.test(OpthoHispanic, DermHispanic),
  t.test(OpthoHispanic, SurgHispanic)
)

# Extract values and create a data frame
HispanicTTest <- data.frame(
  "Specialty compared to Ophthalmology HispanicPercentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoBlackNonHispanic, IMBlackNonHispanic),
  t.test(OpthoBlackNonHispanic, PedBlackNonHispanic),
  t.test(OpthoBlackNonHispanic, RadBlackNonHispanic),
  t.test(OpthoBlackNonHispanic, AnesBlackNonHispanic),
  t.test(OpthoBlackNonHispanic, DermBlackNonHispanic),
  t.test(OpthoBlackNonHispanic, SurgBlackNonHispanic)
)

# Extract values and create a data frame
BlackNonHispanicTTest <- data.frame(
  "Specialty compared to Ophthalmology BlackNonHispanicPercentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoNativeAmericanAlaskan, IMNativeAmericanAlaskan),
  t.test(OpthoNativeAmericanAlaskan, PedNativeAmericanAlaskan),
  t.test(OpthoNativeAmericanAlaskan, RadNativeAmericanAlaskan),
  t.test(OpthoNativeAmericanAlaskan, AnesNativeAmericanAlaskan),
  t.test(OpthoNativeAmericanAlaskan, DermNativeAmericanAlaskan),
  t.test(OpthoNativeAmericanAlaskan, SurgNativeAmericanAlaskan)
)

# Extract values and create a data frame
NativeAmericanAlaskanTTest <- data.frame(
  "Specialty compared to Ophthalmology NativeAmericanAlaskanPercentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoOther, IMOther),
  t.test(OpthoOther, PedOther),
  t.test(OpthoOther, RadOther),
  t.test(OpthoOther, AnesOther),
  t.test(OpthoOther, DermOther),
  t.test(OpthoOther, SurgOther)
)

# Extract values and create a data frame
OtherTTest <- data.frame(
  "Specialty compared to Ophthalmology OtherPercentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)

t_tests <- list(
  t.test(OpthoUnknown, IMUnknown),
  t.test(OpthoUnknown, PedUnknown),
  t.test(OpthoUnknown, RadUnknown),
  t.test(OpthoUnknown, AnesUnknown),
  t.test(OpthoUnknown, DermUnknown),
  t.test(OpthoUnknown, SurgUnknown)
)

# Extract values and create a data frame
UnknownTTest <- data.frame(
  "Specialty compared to Ophthalmology UnknownPercentage T-Score" = c("Internal Medicine", "Pediatrics", "Radiology", "Anesthesiology", "Dermatology", "Surgery"),
  "pvalue" = sapply(t_tests, function(x) x$p.value),
  "test_statistic" = sapply(t_tests, function(x) x$statistic),
  "df" = sapply(t_tests, function(x) x$parameter),
  "conf_interval_lower" = sapply(t_tests, function(x) x$conf.int[1]),
  "conf_interval_upper" = sapply(t_tests, function(x) x$conf.int[2]),
  "mean_optho_male" = sapply(t_tests, function(x) x$estimate[1]),
  "mean_other" = sapply(t_tests, function(x) x$estimate[2])
)