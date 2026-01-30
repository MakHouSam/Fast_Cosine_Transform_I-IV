# Fast-Cosine-Transform I-IV
This repository contains the MATLAB code that can fast compute Discrete Cosine Transform (DCT) I-IV under matrix factorization. We consider the orthogonal DCT I-IV in the form

$$C_{N+1}^{I}=c_{n+1}^{I}(j)=\sqrt{\frac{2}{N}}\epsilon_n\epsilon_j\cos\left(\frac{nj\pi}{N}\right), j,n=0,1,...,N$$
$$C_{N}^{II}=c_{n}^{II}(j)=\sqrt{\frac{2}{N}}\epsilon_j\cos\left(\frac{(n+\frac{1}{2})j\pi}{N}\right), j,n=0,1,...,N-1$$
$$C_{N}^{III}=c_{n}^{III}(j)=\sqrt{\frac{2}{N}}\epsilon_n\cos\left(\frac{n(j+\frac{1}{2})\pi}{N}\right), j,n=0,1,...,N-1$$
$$C_{N}^{IV}=c_{n}^{IV}(j)=\sqrt{\frac{2}{N}}\cos\left(\frac{(n+\frac{1}{2})(j+\frac{1}{2}\pi)}{N}\right), j,n=0,1,...,N-1$$

where $\epsilon_0=\epsilon_{N}=\frac{1}{\sqrt{2}}$, $\epsilon_j=1$ for $j\in \{1,2,...,N-1\}$ and $N\ge 2$ is an integer.

**Lemma 1.** Let $N=2^m\ge 4$ for $m\in \mathbb{Z}^+$, then the matrices $C_{N+1}^{\text{I}}, C_{N}^{\text{II}}, C_{N}^{\text{III}}, C_{N}^{\text{IV}}$ can be factorted in the form 

$$C_{N+1}^I=P_{N+1}^T\begin{bmatrix}
        C^{I}_{\frac{N}{2}+1} & 0\\\
        0 & C^{III}_{\frac{N}{2}}
    \end{bmatrix}H_{N+1}$$

$$C_{N}^{II}=P_{N}^T\begin{bmatrix}
        C^{II}_{\frac{N}{2}} & 0\\\
        0 & C^{IV}_{\frac{N}{2}}
    \end{bmatrix}H_{N}$$

$$C_N^{III}=[C_N^{II}]^T=H_N^T\begin{bmatrix}
        C^{III}_{\frac{N}{2}} & 0\\\
        0 & C^{IV}_{\frac{N}{2}}
    \end{bmatrix}P_N$$

$$C_N^{IV}=P_N^T\tilde{A}_N\begin{bmatrix}
        C^{II}_{\frac{N}{2}} & 0\\\
        0 & C^{II}_{\frac{N}{2}}
    \end{bmatrix}A_N$$

the proof and the definition of factorted matrices of **Lemma 1** can refer to `Gerlind Plonka and Manfred Tasche. Fast and numerically stable algorithms for discrete cosine transforms. Linear
Algebra and its Applications, 394:309–345, 2005.`

## Run the code
The DCT I-IV code of **Lemma 1** are `dct1.m`, `dct2.m`, `dct3.m` and `dct4.m`.The corresponding factorized matrices are also in the `lib` folder.

**Remark 1.** Note that one should divide the results by the coefficient $\sqrt{N}$ for DCT I-IV to get the correct answers (see dct2_compare_dct.m under the `test` folder).
