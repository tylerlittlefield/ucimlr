#' Parkinsons
#'
#' Oxford Parkinson's Disease Telemonitoring Dataset. This dataset is composed
#' of a range of biomedical voice measurements from 42 people with early-stage
#' Parkinson's disease recruited to a six-month trial of a telemonitoring device
#' for remote symptom progression monitoring. The recordings were automatically
#' captured in the patient's homes. Columns in the table contain subject number,
#' subject age, subject gender, time interval from baseline recruitment date,
#' motor UPDRS, total UPDRS, and  16 biomedical voice measures. Each row
#' corresponds to one of 5,875 voice recording from these individuals. The main
#' aim of the data is to predict the motor and total UPDRS scores ('motor_UPDRS'
#' and 'total_UPDRS') from the 16 voice measures. The data is in ASCII CSV
#' format. The rows of the CSV file contain an instance corresponding to one
#' voice recording. There are around 200 recordings per patient, the subject
#' number of the patient is identified in the first column. For further
#' information or to pass on comments, please contact Athanasios Tsanas
#' (tsanasthanasis '@' gmail.com) or Max Little (littlem '@' physics.ox.ac.uk).
#'
#' @format A data frame with 5875 observations on the following 22 variables.
#' \enumerate{
#'   \item subject: Integer that uniquely identifies each subject
#'   \item age: Subject age
#'   \item sex: Subject gender, original coded as 0/1 now male/female
#'   \item test_time: Time since recruitment into the trial. The integer part is the number of days since recruitment.
#'   \item motor_updrs: Clinician's motor UPDRS score, linearly interpolated
#'   \item total_updrs: Clinician's total UPDRS score, linearly interpolated
#'   \item jitter: KP-MDVP jitter as a percentage
#'   \item jitter_abs: KP-MDVP absolute jitter in microseconds
#'   \item jitter_rap: KP-MDVP Relative Amplitude Perturbation
#'   \item jitter_ppq5: KP-MDVP five-point Period Perturbation Quotient
#'   \item jitter_ddp: Average absolute difference of differences between cycles, divided by the average period
#'   \item shimmer: KP-MDVP local shimmer
#'   \item shimmer_d_b: KP-MDVP local shimmer in decibels
#'   \item shimmer_apq3: Three point Amplitude Perturbation Quotient
#'   \item shimmer_apq5: Five point Amplitude Perturbation Quotient
#'   \item shimmer_apq11: KP-MDVP 11-point Amplitude Perturbation Quotient
#'   \item shimmer_dda: Average absolute difference between consecutive differences between the amplitudes of consecutive periods
#'   \item nhr: Noise-to-Harmonics Ratio
#'   \item hnr: Harmonics-to-Noise Ratio
#'   \item rpde: Recurrence Period Density Entropy
#'   \item dfa: Detrended Fluctuation Analysis
#'   \item ppe: Pitch Period Entropy
#' }
#'
#' @details
#' Oxford Parkinson's Disease Telemonitoring Dataset.
#'
#' @references
#' A Tsanas, MA Little, PE McSharry, LO Ramig (2009)
#' 'Accurate telemonitoring of Parkinson’s disease progression by non-invasive speech tests',
#' IEEE Transactions on Biomedical Engineering
#'
#' Little MA, McSharry PE, Hunter EJ, Ramig LO (2009),
#' 'Suitability of dysphonia measurements for telemonitoring of Parkinson's
#' disease',
#' IEEE Transactions on Biomedical Engineering, 56(4):1015-1022
#'
#' Little MA, McSharry PE, Roberts SJ, Costello DAE, Moroz IM.
#' 'Exploiting Nonlinear Recurrence and Fractal Scaling Properties for Voice
#' Disorder Detection',
#' BioMedical Engineering OnLine 2007, 6:23 (26 June 2007)
#'
#' https://archive.ics.uci.edu/ml/machine-learning-databases/parkinsons/telemonitoring/
#'
#' https://archive.ics.uci.edu/ml/datasets/Parkinsons+Telemonitoring
#'
#' @source
#' The dataset was created by Athanasios Tsanas (tsanasthanasis '@' gmail.com)
#' and Max Little (littlem '@' physics.ox.ac.uk) of the University of Oxford, in
#' collaboration with 10 medical centers in the US and Intel Corporation who
#' developed the telemonitoring device to record the speech signals. The
#' original study used a range of linear and nonlinear regression methods to
#' predict the clinician's Parkinson's disease symptom score on the UPDRS scale.
"parkinsons"
