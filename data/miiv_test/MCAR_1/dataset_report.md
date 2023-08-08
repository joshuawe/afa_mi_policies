\usepackage{longtable}\section{The Dataset}
\\begin{itemize}\n\item Number of data points  : 100
\item Number of features     : 4
\item Number of superfeatures: 4
\end{itemize}
\subparagraph{The Prediction Problem}
online problem: 
 Predict the label: ['label'] 
using the superfeatures: ['age', 'sex', 'height', 'weight'] 
\subparagraph{The Superfeature Mapping}
Superfeatures represent a higher level of features such as images that contain multiple subfeatures (the pixels)that are usually acquired / missing jointly. The following superfeatures were defined: 
\\begin{itemize}\n\item CBC : hgb, mcv, mch, mchc, plt, wbc
\item diff_from_CBC : lymph, neut
\item BMP : glu, bun, bicar, crea, na, k, cl, ca
\item CMP_without_BMP : alb, bili, alp, ast, alt
\item ABG : ph, pco2, po2
\item CRP : crp
\item sbp : sbp
\item age : age
\item lact : lact
\item be : be
\item tnt : tnt
\item sex : sex
\item fio2 : fio2
\item phos : phos
\item hr : hr
\item bili_dir : bili_dir
\item methb : methb
\item height : height
\item mg : mg
\item o2sat : o2sat
\item urine : urine
\item ckmb : ckmb
\item fgn : fgn
\item map : map
\item dbp : dbp
\item resp : resp
\item bnd : bnd
\item weight : weight
\item ck : ck
\item temp : temp
\item cai : cai
\item inr_pt : inr_pt
\item ptt : ptt
\end{itemize}
\subsubsection{The Missingness}
\paragraph{Missingness Statistics}
\begin{figure}\centering\includegraphics[width=0.5 \textwidth]{img/dataset_report_missingness_stats.png}\caption{Statistics about the missing data}\label{fig:img/dataset_report_missingness_stats.png}\end{figure}\paragraph{The Missingness Model}
\subparagraph{The Missing Data Graph}
\begin{figure}\centering\includegraphics[width=0.5 \textwidth]{img/dataset_report_m_graph.png}\caption{The assumed missing data graph.}\label{fig:img/dataset_report_m_graph.png}\end{figure}\paragraph{The AFA problem}
The AFA problem is to decide what groups of features to acquire to solve the prediction problem. Feature Acquisition actions produce a cost. These are the options: 
\begin{itemize}
\item acquire_CBC
\begin{itemize}
\item target_superfeatures: ['CBC']
\item cost: 26.0
\item resolution: 1.0
\item delay: 1.0
\end{itemize}
\item acquire_CBC+diff
\begin{itemize}
\item target_superfeatures: ['CBC', 'diff_from_CBC']
\item cost: 35.0
\item resolution: 1.0
\item delay: 0.0
\end{itemize}
\end{itemize}
