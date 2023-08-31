\usepackage{longtable}\paragraph{The AFA problem}
The AFA problem is to decide what groups of features to acquire to solve the prediction problem. Feature Acquisition actions produce a cost. These are the options: 
\begin{itemize}
\item acquire_CBC
\begin{itemize}
\item cost: 26
\item target_superfeatures: ['CBC']
\item resolution: 1
\item delay: 1
\end{itemize}
\item acquire_CBC+diff
\begin{itemize}
\item cost: 35
\item target_superfeatures: ['CBC', 'diff_from_CBC']
\item resolution: 1
\item delay: 0
\end{itemize}
\item acquire_BMP
\begin{itemize}
\item cost: 36
\item target_superfeatures: ['BMP']
\item resolution: 1
\item delay: 1
\end{itemize}
\item acquire_CMP
\begin{itemize}
\item cost: 48
\item target_superfeatures: ['BMP', 'CMP_without_BMP']
\item resolution: 1
\item delay: 1
\end{itemize}
\item acquire_ABG
\begin{itemize}
\item cost: 474
\item target_superfeatures: ['ABG']
\item resolution: 1
\item delay: 1
\end{itemize}
\item acquire_CRP
\begin{itemize}
\item cost: 26
\item target_superfeatures: ['CRP']
\item resolution: 1
\item delay: 1
\end{itemize}
\end{itemize}
