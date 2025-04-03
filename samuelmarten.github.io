<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Samuel Marten - Professional Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #2563eb;
            --secondary: #1e40af;
            --accent: #3b82f6;
            --light: #f8fafc;
            --dark: #1e293b;
            --gray: #64748b;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--light);
            color: var(--dark);
            line-height: 1.6;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        header {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            padding: 2rem 0;
            position: relative;
            overflow: hidden;
        }
        
        header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiPjxkZWZzPjxwYXR0ZXJuIGlkPSJwYXR0ZXJuIiB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHBhdHRlcm5Vbml0cz0idXNlclNwYWNlT25Vc2UiIHBhdHRlcm5UcmFuc2Zvcm09InJvdGF0ZSg0NSkiPjxyZWN0IHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgZmlsbD0icmdiYSgyNTUsMjU1LDI1NSwwLjA1KSIvPjwvcGF0dGVybj48L2RlZnM+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0idXJsKCNwYXR0ZXJuKSIvPjwvc3ZnPg==');
            opacity: 0.5;
        }
        
        .header-content {
            position: relative;
            z-index: 2;
            display: flex;
            align-items: center;
            gap: 2rem;
            animation: fadeIn 1s ease-in-out;
        }
        
        .profile-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid white;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }
        
        .profile-img:hover {
            transform: scale(1.05);
        }
        
        .header-text h1 {
            font-size: 2.5rem;
            margin-bottom: 0.5rem;
            font-weight: 700;
        }
        
        .header-text p {
            font-size: 1.2rem;
            opacity: 0.9;
            margin-bottom: 1rem;
        }
        
        .btn {
            display: inline-block;
            background-color: white;
            color: var(--primary);
            padding: 0.8rem 1.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: none;
            cursor: pointer;
        }
        
        .btn:hover {
            background-color: var(--accent);
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }
        
        .btn-outline {
            background-color: transparent;
            color: white;
            border: 2px solid white;
            margin-left: 1rem;
        }
        
        .btn-outline:hover {
            background-color: white;
            color: var(--primary);
        }
        
        section {
            padding: 3rem 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 2rem;
            position: relative;
            font-size: 2rem;
            color: var(--dark);
        }
        
        .section-title::after {
            content: '';
            display: block;
            width: 80px;
            height: 4px;
            background: var(--primary);
            margin: 0.5rem auto;
            border-radius: 2px;
        }
        
        .card {
            background-color: white;
            border-radius: 10px;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-left: 4px solid var(--primary);
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        
        .card h3 {
            color: var(--primary);
            margin-bottom: 1rem;
            font-size: 1.4rem;
        }
        
        .card p, .card ul {
            color: var(--gray);
        }
        
        .skills {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin-top: 1rem;
        }
        
        .skill {
            background-color: var(--accent);
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 50px;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }
        
        .skill:hover {
            background-color: var(--secondary);
            transform: scale(1.05);
        }
        
        .timeline {
            position: relative;
            padding-left: 2rem;
        }
        
        .timeline::before {
            content: '';
            position: absolute;
            left: 7px;
            top: 0;
            bottom: 0;
            width: 2px;
            background: var(--primary);
        }
        
        .timeline-item {
            position: relative;
            padding-bottom: 2rem;
        }
        
        .timeline-item::before {
            content: '';
            position: absolute;
            left: -2.1rem;
            top: 0;
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: var(--primary);
            border: 2px solid white;
        }
        
        .timeline-date {
            color: var(--primary);
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        
        .contact-info {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }
        
        .contact-item {
            display: flex;
            align-items: center;
            gap: 1rem;
        }
        
        .contact-icon {
            width: 40px;
            height: 40px;
            background-color: var(--primary);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
        }
        
        footer {
            background-color: var(--dark);
            color: white;
            text-align: center;
            padding: 2rem 0;
            margin-top: 2rem;
        }
        
        .social-links {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin: 1.5rem 0;
        }
        
        .social-link {
            color: white;
            font-size: 1.5rem;
            transition: transform 0.3s ease, color 0.3s ease;
        }
        
        .social-link:hover {
            color: var(--accent);
            transform: translateY(-3px);
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .animate {
            animation: fadeIn 1s ease-in-out;
        }
        
        .delay-1 {
            animation-delay: 0.2s;
        }
        
        .delay-2 {
            animation-delay: 0.4s;
        }
        
        .delay-3 {
            animation-delay: 0.6s;
        }
        
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                text-align: center;
            }
            
            .btn-outline {
                margin-left: 0;
                margin-top: 1rem;
            }
            
            .header-text h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="header-content">
                <!-- Replace with your actual photo -->
                <img src="https://via.placeholder.com/150" alt="Samuel Marten" class="profile-img">
                <div class="header-text">
                    <h1>Samuel Marten</h1>
                    <p>Lulusan SMAN 28 Jakarta | Komunikator yang Baik | Kreatif</p>
                    <div>
                        <a href="#contact" class="btn">Hubungi Saya</a>
                        <a href="#experience" class="btn btn-outline">Pengalaman</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <section id="about">
        <div class="container">
            <h2 class="section-title animate">Profil</h2>
            <div class="card animate delay-1">
                <p>Saya adalah lulusan SMA Negeri 28 Jakarta tahun 2024 yang memiliki semangat tinggi untuk bekerja di bidang lapangan, terutama yang melibatkan kerja sama tim dan komunikasi. Saya dikenal sebagai individu yang kreatif, peka terhadap situasi, serta mampu mengatasi masalah dengan baik. Saya siap belajar dan berkontribusi secara maksimal dalam lingkungan kerja yang dinamis.</p>
            </div>
        </div>
    </section>
    
    <section id="education">
        <div class="container">
            <h2 class="section-title animate">Pendidikan</h2>
            <div class="card animate delay-1">
                <div class="timeline">
                    <div class="timeline-item">
                        <div class="timeline-date">2021 - 2024</div>
                        <h3>SMAN 28 Jakarta</h3>
                        <p>Jurusan IPS</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section id="skills">
        <div class="container">
            <h2 class="section-title animate">Kemampuan</h2>
            <div class="card animate delay-1">
                <div class="skills">
                    <div class="skill">Komunikasi yang Baik</div>
                    <div class="skill">Microsoft Office</div>
                    <div class="skill">Canva</div>
                    <div class="skill">Kreativitas</div>
                    <div class="skill">Kerja Sama Tim</div>
                    <div class="skill">Problem Solving</div>
                </div>
            </div>
        </div>
    </section>
    
    <section id="experience">
        <div class="container">
            <h2 class="section-title animate">Pengalaman</h2>
            <div class="card animate delay-1">
                <p>Meskipun belum memiliki pengalaman kerja yang menghasilkan uang atau di luar lingkungan sekolah, saya memiliki beberapa pengalaman dalam organisasi dan kegiatan sosial yang membantu saya mengembangkan keterampilan komunikasi, kerja sama tim, dan problem-solving.</p>
                
                <div class="timeline" style="margin-top: 2rem;">
                    <div class="timeline-item">
                        <h3>Pengurus Ekstrakurikuler Sekolah</h3>
                        <p>Terlibat dalam perencanaan dan pelaksanaan kegiatan ekstrakurikuler, melatih kepemimpinan serta koordinasi antar anggota.</p>
                    </div>
                    <div class="timeline-item">
                        <h3>Relawan di Panti Asuhan</h3>
                        <p>Membantu anak-anak dalam kegiatan belajar dan bermain, serta meningkatkan empati dan kemampuan komunikasi interpersonal.</p>
                    </div>
                    <div class="timeline-item">
                        <h3>Panitia Lomba Sekolah</h3>
                        <p>Bertanggung jawab dalam koordinasi peserta, persiapan acara, dan kelancaran jalannya perlombaan, memperkuat keterampilan organisasi dan kerja sama tim.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section id="contact">
        <div class="container">
            <h2 class="section-title animate">Kontak</h2>
            <div class="card animate delay-1">
                <div class="contact-info">
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <span>0813 8929 2230</span>
                    </div>
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <span>maherconstantine9@gmail.com</span>
                    </div>
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <span>gg.m saleh RT14/RW06</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <footer>
        <div class="container">
            <h3>Samuel Marten</h3>
            <div class="social-links">
                <a href="#" class="social-link"><i class="fab fa-linkedin"></i></a>
                <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                <a href="#" class="social-link"><i class="fab fa-whatsapp"></i></a>
            </div>
            <p>&copy; 2024 Samuel Marten. All rights reserved.</p>
        </div>
    </footer>
    
    <script>
        // Simple animation on scroll
        document.addEventListener('DOMContentLoaded', function() {
            const animateElements = document.querySelectorAll('.animate');
            
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.opacity = 1;
                        entry.target.style.transform = 'translateY(0)';
                    }
                });
            }, { threshold: 0.1 });
            
            animateElements.forEach(el => {
                el.style.opacity = 0;
                el.style.transform = 'translateY(20px)';
                el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
                observer.observe(el);
            });
            
            // Smooth scrolling for anchor links
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function(e) {
                    e.preventDefault();
                    document.querySelector(this.getAttribute('href')).scrollIntoView({
                        behavior: 'smooth'
                    });
                });
            });
        });
    </script>
</body>
</html>
