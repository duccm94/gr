# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  {name: "Admin", email: "admin@gmail.com", password: "123456",
    gender: 1, birthday: "01/01/1969".to_date, role: "admin",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/profile.png"))},
  {name: "Trần Hữu Cường", email: "cuongth@gmail.com", password: "123456",
    gender: 1, role: "trainer",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/TranHuuCuong.jpg"))},
  {name: "Tạ Tất Đạt", email: "dattt@gmail.com", password: "123456",
    gender: 1, role: "trainer",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/TaTatDat.jpg"))},
  {name: "Nguyễn Quang Minh", email: "minhnq@gmail.com", password: "123456",
    gender: 1, birthday: "27/08/1994".to_date, role: "trainer"},
  {name: "Bùi Hoàng Tùng", email: "tungbh@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/BuiHoangTung.jpg"))},
  {name: "Đào Mạnh Nhất", email: "nhatdm@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/DaoManhNhat.jpg"))},
  {name: "Đinh Trọng Thắng", email: "thangdt@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/DinhTrongThang.jpg"))},
  {name: "Hoàng Thanh Long", email: "longht@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/HoangThanhLong.jpg"))},
  {name: "Lê Thế Hoàng Hải", email: "hailth@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/LeTheHoangHai.jpg"))},
  {name: "Lưu Trung Nghĩa", email: "nghialt@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/LuuTrungNghia.jpg"))},
  {name: "Nguyễn Bảo Ngọc", email: "ngocnb@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenBaoNgoc.jpg"))},
  {name: "Nguyễn Lê Minh Châu", email: "chaunlm@gmail.com", password: "123456",
    gender: 0, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenLeMinhChau.jpg"))},
  {name: "Nguyễn Ngọc Anh", email: "anhnn@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenNgocAnh.jpg"))},
  {name: "Nguyễn Quang Dương", email: "duongnq@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenQuangDuong.jpg"))},
  {name: "Nguyễn Quang Huy", email: "huynq@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenQuangHuy.jpg"))},
  {name: "Nguyễn Thị Thúy", email: "thuynt@gmail.com", password: "123456",
    gender: 0, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenThiThuy.jpg"))},
  {name: "Nguyễn Thu Trang", email: "trangnt@gmail.com", password: "123456",
    gender: 0, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenThuTrang.jpg"))},
  {name: "Nguyễn Viết Thanh Sơn", email: "sonnvt@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenVietThanhSon.jpg"))},
  {name: "Nguyễn Xuân Bách", email: "bachnx@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenXuanBach.jpg"))},
  {name: "Phạm Tiến Mạnh", email: "manhpt@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/PhamTienManh.jpg"))},
  {name: "Trần Trung Hiếu", email: "hieutt@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/TranTrungHieu.jpg"))},
  {name: "Vũ Thị Hiền", email: "hienvt@gmail.com", password: "123456",
    gender: 0, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/VuThiHien.jpg"))},
  {name: "Trịnh Kiên", email: "kient@gmail.com", password: "123456",
    gender: 1, birthday: "30/12/1994".to_date, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/TrinhKien.jpg"))},
  {name: "Trương Tiến Mạnh", email: "manhtt@gmail.com", password: "123456",
    gender: 1, birthday: "14/04/1994".to_date, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/TruongTienManh.jpg"))},
  {name: "Hoàng Như Quỳnh", email: "quynhhn@gmail.com", password: "123456",
    gender: 0, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/HoangNhuQuynh.jpg"))},
  {name: "Võ Gia Hân", email: "hanvg@gmail.com", password: "123456",
    gender: 0, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/VoGiaHan.jpg"))},
  {name: "Lê Văn Hoạt", email: "hoatlv@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/LeVanHoat.jpg"))},
  {name: "Mầu Hà Quang", email: "quangmh@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/MauHaQuang.jpg"))},
  {name: "Nguyễn Anh Tuấn", email: "tuanna@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenAnhTuan.jpg"))},
  {name: "Nguyễn Thúy", email: "thuyn@gmail.com", password: "123456",
    gender: 0, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenThuy.jpg"))},
  {name: "Nguyễn Tiến Nghiệp", email: "nghiepnt@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenTienNghiep.jpg"))},
  {name: "Phạm Hồng Thanh", email: "thanhph@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/PhamHongThanh.jpg"))},
  {name: "Trần Đình Giáp", email: "giaptd@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/TranDinhGiap.jpg"))},
  {name: "Hoàng Ngọc Quý", email: "quyhn@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/HoangNgocQuy.jpg"))},
  {name: "Phan Kiên", email: "kienp@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/PhanKien.jpg"))},
  {name: "Nguyễn Huy Hoàn", email: "hoannh@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenHuyHoan.jpg"))},
  {name: "Nguyễn Trường Thành", email: "thanhnt@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/NguyenTruongThanh.jpg"))},
  {name: "Vũ Công Nguyên", email: "nguyenvc@gmail.com", password: "123456",
    gender: 1, role: "trainee",
    avatar: File.open(File.join(Rails.root, "/app/assets/images/users/VuCongNguyen.jpg"))}
])

EvaluationCriterium.create!([
  {name: "Basic knowledge", max_point: 10},
  {name: "Advanced knowledge", max_point: 10},
  {name: "Coding convention", max_point: 10},
  {name: "Implement with new techniques", max_point: 10}
])

Course.create!([
  {code: "RAILS-01", name: "Ruby on Rails", status: 1, start_date: Time.now, end_date: Time.now + 10.days,
    image: File.open(File.join(Rails.root, "app/assets/images/Ruby.png")),
    description: "Master your Ruby skills and increase your Rails street cred by learning to build dynamic, sustainable applications for the web.\r\n",
    content: "<pre>\r\n[Ruby book in 3 days]\r\n<a href=\"https://raw.githubusercontent.com/jay3126/various_imp_ebooks/master/the_ruby_programming_language.pdf\" target=\"_blank\" title=\"https://raw.githubusercontent.com/jay3126/various_imp_ebooks/master/the_ruby_programming_language.pdf\">https://raw.githubusercontent.com/jay3126/various_imp_ebooks/master/the_ruby_programming_language.pdf</a>\r\n\r\n[Rails tutorial in 2 weeks]\r\n<a href=\"https://www.railstutorial.org/book\" target=\"_blank\" title=\"https://www.railstutorial.org/book\">https://www.railstutorial.org/book</a>\r\n\r\n[Setup Manual]\r\n<a href=\"https://docs.google.com/document/d/1PJtwd0KvK3d16jxgOcGwYLDbG501I-PDKPOCMxDX9Lg/edit#heading=h.eqkdaet38e6s\" target=\"_blank\" title=\"https://docs.google.com/document/d/1PJtwd0KvK3d16jxgOcGwYLDbG501I-PDKPOCMxDX9Lg/edit#heading=h.eqkdaet38e6s\">https://docs.google.com/document/d/1PJtwd0KvK3d16jxgOcGwYLDbG501I-PDKPOCMxDX9Lg/edit#heading=h.eqkdaet38e6s</a> </pre>\r\n"},

  {code: "GIT-01", name: "Git", status: 0, start_date: Time.now + 1.day, end_date: Time.now + 3.days,
    image: File.open(File.join(Rails.root, "app/assets/images/try-git.png")),
    description: "Git is the most popular version control system that developers use to track and share code.\r\n",
    content: "<p>Learn the basics of Git,&nbsp;</p>\r\n\r\n<article data-course-id=\"16\" id=\"course_16\" itemscope=\"\" itemtype=\"http://schema.org/Product\">\r\n<p itemprop=\"description\">Get a more advanced introduction and guide to Git.</p>\r\n\r\n<article data-course-id=\"30\" id=\"course_30\" itemscope=\"\" itemtype=\"http://schema.org/Product\">\r\n<p itemprop=\"description\">Learn more advanced Git techniques.</p>\r\n</article>\r\n</article>\r\n"},

  {code: "RAILS-02", name: "Ruby on Rails", status: 1, start_date: Time.now, end_date: Time.now + 4.days,
    image: File.open(File.join(Rails.root, "app/assets/images/Ruby.png")),
    description: "Learn more Rails with this sequel to the infamous Rails for Zombies course. Increase your Ruby on Rails knowledge with even more zombie learning."},

  {code: "ANDROID-01", name: "Android", status: 0, start_date: Time.now, end_date: Time.now + 5.days,
    image: File.open(File.join(Rails.root, "app/assets/images/Android.png")),
    description: "This tutorial will teach you basic Android programming and will also take you through some advance concepts related to Android application development."},

  {code: "PHP-01", name: "PHP", status: 1, start_date: Time.now, end_date: Time.now + 6.days,
    image: File.open(File.join(Rails.root, "app/assets/images/PHP.png")),
    description: "PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages"},

  {code: "WEB-01", name: "HTML5 and CSS Fundamentals", status: 0, start_date: Time.now + 1.days, end_date: Time.now + 6.days,
    image: File.open(File.join(Rails.root, "app/assets/images/HTML5-CSS-Fundamentals.jpg")),
    description: "Learn how to build Web sites using HTML5 and basic CSS, directly from W3C, creator of the latest Web standards.",
    content: "<h3>Welcome to the HTML5 and CSS Fundamentals course!</h3>
      <hr>
      <p>Hello,</p>
      <img src='https://w3cx.org/img/5-0.png' alt='HTML5&CSS Fundamentals course visual' style='float: right; margin: 4px 6px 4px 6px;' height='112' width='200' />
      <p>Thank you for registering to this course, where you will learn the basic building blocks of Web design and style – HTML5 and CSS – to give your site a professional look and feel.</p>
      <p>To get started, please read the '<a href='https://courses.edx.org/courses/course-v1:W3Cx+HTML5.0x+1T2017/courseware/76828eeb1b274f478c1dce2b9ef2148e/ea807e8db9924b5ca73d255309bda2e8/1' target='_blank'>Course practical information</a>' section, where you can become oriented to the course structure, the schedule, and how things will work in this course. Please take 5 mins to introduce yourself in the <a href='https://courses.edx.org/courses/course-v1:W3Cx+HTML5.0x+1T2017/courseware/76828eeb1b274f478c1dce2b9ef2148e/be863694ac4b45e492eae4c82576acc5/2' target='_blank'>student introduction forum</a>, and another 5 minutes to answer our <a href='https://courses.edx.org/courses/course-v1:W3Cx+HTML5.0x+1T2017/courseware/76828eeb1b274f478c1dce2b9ef2148e/be863694ac4b45e492eae4c82576acc5/3' target='_blank'>welcome survey</a> :) </p>
      <p>
        &nbsp;
      </p>
      <h3>Course outline</h3>
      <hr>
      <ul>
      <li>The first set of lessons are available under <strong>'Module 1: My first Web page in HTML5'</strong>.</li>
        <li><img src='//d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/76f4d62ca863d84d6c07d29a4a9879d4/asset-v1:W3Cx+HTML5.0x+1T2017+type@asset+block/HTML5pizza.png' alt='HTML5 Pizza recipe!' style='float: right; margin: 4px 5px 4px 5px;' type='saveimage' target='[object Object]' height='165' width='89'> In <strong>Module 2</strong>, you will learn about HTML5 attributes, and become fluent in adding images and links in your Web pages.</li>
      <li>Now that you have made your first Web page, it is time to introduce you to CSS in <strong>Module 3</strong>.<br>
        CSS is used to style the HTML. <img src='//d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/76899f7c3923adb68e84a07cf1892bd9/asset-v1:W3Cx+HTML5.0x+1T2017+type@asset+block/styletag.jpg' alt='CSS code' style='float: left; margin: 4px 5px 4px 5px;' type='saveimage' target='[object Object]' height='100'> It is how we determine the color, text size, spacing and other visual aspects of your Web page. We'll introduce the syntax of CSS, how to include it with your pages, and get you started with some basic properties and concepts. Note that we'll explore how to use CSS to layout your page during the last week of this course.
      </li>
      <li><img src='//d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/063b584da882baac3e39e088c4c9dc80/asset-v1:W3Cx+HTML5.0x+1T2017+type@asset+block/Screen_Shot_2016-03-08_at_8.19.27_PM.png' alt='CSS box model' style='float: right; margin: 4px;' type='saveimage' target='[object Object]' height='167' width='191'> Whilst practicing and improving your recipe project (or else) with CSS features, you may have noticed that errors (subtle or not - we've all been there) can get in the way! This week you will learn how to fix your Web page when it's not doing what you hoped it would do.<br> <strong>Module 4</strong> is a 'short' week so please use that time to practice, practice and practice coding again :) Please continue to share your work in the discussion forum using CodePen, JSBin, GitHub or the XDK.</li>
      <li><img src='//d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/a39f5002471ae3d5df747a1a86552ed8/asset-v1:W3Cx+HTML5.0x+1T2017+type@asset+block/tablescodecrop.jpg' alt='Picture of table markup' style='float: right; margin: 4px;' type='saveimage' target='[object Object]' height='100'><strong>In Module 5</strong>, you will be combining HTML and CSS to create more complex pages, and 'beautify' even more your recipe projects. You will learn about tables, the audio and video elements, etc. This is a good preparatory work for the <a href='https://www.edx.org/course/html5-coding-essentials-w3cx-html5-1x-2' target='_blank'>HTML5 Coding Essentials and Best Practices course</a> (intermediate level). You will also learn how to embed other elements in a page other than a simple image. Note that some parts of the material are optional: iframes, usemap, ismap and pseudo-classes.</li>
      <li><strong>Module 6</strong> is about page layout and more specifically about the flexbox module. Using flexible widths and heights, elements can be aligned to fill a space or distribute space between elements, which makes it a great tool to use for responsive design systems. <img src='http://brolik.com/blog/wp-content/uploads/2015/12/Screen-Shot-2015-12-04-at-Dec-4-3.04.36-PM.png' alt='Frogs on their lilypads' style='float: right; margin: 4px;' type='saveimage' target='[object Object]' height='75'> Once you've got the basics, practice more with this fun <a href='http://flexboxfroggy.com/' target='_blank'>Flexbox Froggy</a> game. Note that some parts of this week are clearly indicated OPTIONAL, meaning that there will be no questions related to that content material.</li>"}
])

UserCourse.create!([
  {status: 0, user_id: 2, course_id: 1},
  {status: 0, user_id: 3, course_id: 1},
  {status: 0, user_id: 4, course_id: 1},
  {status: 0, user_id: 5, course_id: 1},
  {status: 0, user_id: 6, course_id: 1},
  {status: 1, user_id: 2, course_id: 2},
  {status: 2, user_id: 7, course_id: 2}
])

Subject.create!([
  {name: "Try Ruby", redmine_identifier: "rubybasic", course_id: 1,
    image: File.open(File.join(Rails.root, "app/assets/images/try-ruby.png")),
    description: "Learn the basic building blocks of Ruby, all in the browser.\r\n",
    content: "<p>Get an introduction to numbers, Strings, properties, and methods,&nbsp;
      Learn about conversions, arrays, variables, and more methods</p>\r\n"},

  {name: "Rails for Zombies Redux", redmine_identifier: "railsbasic", course_id: 1,
    image: File.open(File.join(Rails.root, "app/assets/images/Ruby.png")),
    description: "Learn Ruby on Rails, an open-source framework for the Ruby programming language.
      Rails for Zombies will teach you all the Rails basics with a zombie flair.\r\n",
    content: "<p>Learn more Rails with this sequel to the infamous Rails for Zombies course.
      Increase your Ruby on Rails knowledge with even more zombie learning.</p>\r\n"},

  {name: "Try Git", redmine_identifier: "gitbasic", course_id: 1,
    image: File.open(File.join(Rails.root, "app/assets/images/try-git.png")),
    description: "Learn how to use Git by reviewing the basic concepts of Git
      version control. Try out this introductory course that was created with GitHub.\r\n",
    content: "<pre>\r\n[Git]\r\n<a href=\"http://git-scm.com/book\" target=\"_blank\"
      title=\"http://git-scm.com/book\">http://git-scm.com/book</a>\r\n<a href=\"https://docs.google.com/presentation/d/17ujkZPZbHlku1O5p7vJcUpTKM_ppxFvK9bSF2DRF8_c/edit?usp=sharing\" target=\"_blank\"
      title=\"https://docs.google.com/presentation/d/17ujkZPZbHlku1O5p7vJcUpTKM_ppxFvK9bSF2DRF8_c/edit?usp=sharing\">https://docs.google.com/presentation/d/17ujkZPZbHlku1O5p7vJcUpTKM_ppxFvK9bSF2DRF8_c/edit?usp=sharing</a>
      <a data-content-id=\"-\" data-type=\"googledocs\" data-url=\"https%3A%2F%2Fdocs.google.com%2Fpresentation%2Fd%2F17ujkZPZbHlku1O5p7vJcUpTKM_ppxFvK9bSF2DRF8_c%2Fedit%3Fusp%3Dsharing\" data-user-id=\"\">Preview</a>\r\n\r\n</pre>\r\n"},

  {name: "Ruby on Rails Tutorial Book", redmine_identifier: "rubyonrailsbasic", course_id: 3,
    image: File.open(File.join(Rails.root, "app/assets/images/Ruby.png")),
    description: "Learn the basic building blocks of Ruby, all in the browser.\r\n",
    content: "<p>Get an introduction to numbers, Strings, properties, and methods,&nbsp;
      Learn about conversions, arrays, variables, and more methods</p>\r\n"},

  {name: "Ruby's Project 1", redmine_identifier: "rubyproject1", course_id: 3,
    image: File.open(File.join(Rails.root, "app/assets/images/Ruby.png")),
    description: "Start Project 1 for Ruby on Rails today.\r\n",
    content: "<p>Get an introduction to redmine, requirement, design database</p>\r\n"},

  {name: "Ruby's Project 2", redmine_identifier: "rubyproject2", course_id: 3,
    image: File.open(File.join(Rails.root, "app/assets/images/Ruby.png")),
    description: "Start Project 2 for Ruby on Rails today.\r\n",
    content: "<p>Get an introduction to redmine, requirement, design database</p>\r\n"},

  {name: "Git Tutorial", redmine_identifier: "gitintroduce", course_id: 2,
    image: File.open(File.join(Rails.root, "app/assets/images/try-git.png")),
    description: "Start Git for your project today.\r\n",
    content: "<p>Get an introduction to github, code version management</p>\r\n"},

  {name: "Android Tutorial Book", redmine_identifier: "androidbasic", course_id: 4,
    image: File.open(File.join(Rails.root, "app/assets/images/Android.png")),
    description: "This tutorial will teach you basic Android programming and will also take you through some advance concepts related to Android application development.\r\n",
    content: "<p>Get an introduction to numbers, Strings, properties, and methods,&nbsp;
      Learn about conversions, arrays, variables, and more methods</p>\r\n"},

  {name: "Android's Project 1", redmine_identifier: "androidproject1", course_id: 4,
    image: File.open(File.join(Rails.root, "app/assets/images/Android.png")),
    description: "Start Project 1 for Android today.\r\n",
    content: "<p>Get an introduction to redmine, requirement, design database</p>\r\n"},

  {name: "Android's Project 2", redmine_identifier: "androidproject2", course_id: 4,
    image: File.open(File.join(Rails.root, "app/assets/images/Android.png")),
    description: "Start Project 2 for Android today.\r\n",
    content: "<p>Get an introduction to redmine, requirement, design database</p>\r\n"},

  {name: "PHP Tutorial Book", redmine_identifier: "phpbasic", course_id: 5,
    image: File.open(File.join(Rails.root, "app/assets/images/PHP.png")),
    description: "PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.\r\n",
    content: "<p>Get an introduction to numbers, Strings, properties, and methods,&nbsp;
      Learn about conversions, arrays, variables, and more methods</p>\r\n"},

  {name: "PHP's Project 1", redmine_identifier: "phpproject1", course_id: 5,
    image: File.open(File.join(Rails.root, "app/assets/images/PHP.png")),
    description: "Start Project 1 for PHP today.\r\n",
    content: "<p>Get an introduction to redmine, requirement, design database</p>\r\n"},

  {name: "PHP's Project 2", redmine_identifier: "phpproject2", course_id: 5,
    image: File.open(File.join(Rails.root, "app/assets/images/PHP.png")),
    description: "Start Project 2 for PHP today.\r\n",
    content: "<p>Get an introduction to redmine, requirement, design database</p>\r\n"},

  {name: "JavaScript", redmine_identifier: "javascriptbasic", course_id: 5,
    image: File.open(File.join(Rails.root, "app/assets/images/JavaScript.png")),
    description: "JavaScript is the programming language of HTML and the Web.
    Programming makes computers do what you want them to do. JavaScript is easy to learn. This tutorial will teach you JavaScript from basic to advanced."},

  {name: "Module 1", redmine_identifier: "web_module1", course_id: 6,
    image: File.open(File.join(Rails.root, "app/assets/images/HTML5-CSS-Fundamentals.jpg")),
    description: "Hi, welcome to week 1 of the introduction to HTML5!
      This week, we're going to cover some of the history of HTML and the web.
      We're going to learn about HTML5 and how it relates to CSS and JavaScript.
      And we're going to learn what Elements, Tags and Attributes are.
      We'll learn about best practices, and some of the do's and don'ts of writing HTML5.
      And we'll learn how to create and edit HTML5 in an editor, as well as view it as an end product.
      Throughout the week, you'll have opportunities to practice what we're teaching
      And at the end of the week, you'll have a chance to show off what you've learned in the Quiz section.
      We hope you learn a lot!",
    content: "<p><g class='gr_ gr_28 gr-alert gr_spell gr_run_anim ContextualSpelling multiReplace' id='28' data-gr-id='28'>Twenty six</g> years ago today, a proposal was sent internally at CERN outlying a universal linked information system. Dubbed &#39;Information Management: A proposal&#39;, pictured below, the proposal was created by Sir Tim Berners-Lee and was sent to his boss Mike Sendall, who described it as &#39;vague but exciting&#39;.</p> <p><img src='https://www.w3.org/History/1989/Image1.gif' alt='Tim Berners-Lee original proposal for the Web' type='saveimage' target='[object Object]' preventdefault='function (){r.isDefaultPrevented=n}' stoppropagation='function (){r.isPropagationStopped=n}' stopimmediatepropagation='function (){r.isImmediatePropagationStopped=n}' isdefaultprevented='function t(){return!1}' ispropagationstopped='function t(){return!1}' isimmediatepropagationstopped='function t(){return!1}' height='401' width='448' /></p> <div style='overflow: hidden; color: #000000; background-color: #ffffff; text-align: left; text-decoration: none;'></div> <p>Sir Tim Berners-Lee&rsquo;s vision for universality enabled the development of a high-level network of content that allows any document to link to any other documents.</p> <p>The World Wide Web was initially created to make it easier to share research papers. It is a system of interlinked &lsquo;hypertext&rsquo; documents that are accessed via the Internet; in essence, an information space. While he did not invent hypertext systems, Berners-Lee proposed using them &#39;to link and access information of various kinds as a web of nodes in which the user can browse at will.&#39;</p> <p>His breakthrough was to link hypertext to the Internet and he used three technologies to do this:</p> <ul> <li>HyperText Transfer Protocol (HTTP) is the foundation of data communication for the Web.</li> <li>HyperText Markup Language (HTML) is the main <g class='gr_ gr_22 gr-alert gr_spell gr_run_anim ContextualSpelling' id='22' data-gr-id='22'>mark-up</g> language for creating Web pages and information that can be displayed on a Web browser.</li> <li>Web addresses or a Uniform Resource Locator (URL) are used to reference a Web page.</li> </ul> <p>In the following pages, we present HTML through what is usually called the big 3 (HTML5, <g class='gr_ gr_27 gr-alert gr_gramm gr_run_anim Punctuation only-ins replaceWithoutSep' id='27' data-gr-id='27'>CSS</g> and JavaScript), the hypertext concept and the browser that <span class='st'>is an application program that provides a way to look at and interact with all the information on the World Wide Web.</span></p>
      <p><img src='https://previews.123rf.com/images/radiantskies/radiantskies1212/radiantskies121200521/16633356-Abstract-word-cloud-for-Character-encoding-with-related-tags-and-terms-Stock-Photo.jpg' alt='Character encoding world cloud' style='float: right; margin: 4px 6px 4px 6px;' type='saveimage' target='[object Object]' preventdefault='function (){r.isDefaultPrevented=n}' stoppropagation='function (){r.isPropagationStopped=n}' stopimmediatepropagation='function (){r.isImmediatePropagationStopped=n}' isdefaultprevented='function t(){return!1}' ispropagationstopped='function t(){return!1}' isimmediatepropagationstopped='function t(){return!1}' height='212' width='200' />A character can be any letter, digit or symbol that makes up words and languages. English alphabets and digits &#39;a-z&#39;, &#39;A-Z&#39;, &#39;0-9&#39; are all considered characters. Other examples of characters include the Latin letter <a href='http://www.w3.org/International/questions/images/225.png' target='_blank'>&aacute;</a> or the Chinese ideograph <a href='http://www.w3.org/International/questions/images/35531.png' target='_blank'>請</a> or the Devanagari character <a href='http://www.w3.org/International/questions/images/2361.png' target='_blank'>ह</a>. A <strong>character set</strong> is a collection of characters (letters and symbols) in a writing system.</p> <p>Each character is assigned a particular number called a <strong>code point</strong>. These code points are stored in computer memory in the form of <a href='https://en.wikipedia.org/wiki/Byte' target='_blank'>bytes</a>&nbsp;(a unit of data in computer memory). In &nbsp;technical terms, we say&nbsp;the character is<strong> encoded</strong> using one or more bytes.&nbsp;</p> <p>Basically, all the characters are stored in computer language and a <strong>character encoding</strong> is the awesome dictionary that is going to help us decode this computer language into something we can understand. In technical terms,&nbsp;it is what is used as a reference to map code points into bytes to store in computer memory; then when you use a character in your HTML, the bytes are then read back into code points using the character encoding as a reference.&nbsp;</p> <p>Examples of character encodings include:</p> <ul> <li>ASCII: contains letters, characters and a limited set of symbols and punctuation for the English language</li> <li>Windows-1252 (Latin1): Windows character set that supports 256 different code points</li> <li>ISO-8859-6: contains letters and symbols based on the Arabic script</li> <li>Unicode: contains characters for most living languages and scripts in the world</li> </ul> <p>When you code in HTML, you must specify the encoding you wish&nbsp; your page to use. Providing no encoding or the wrong one is pretty much like providing the wrong dictionary to decode. It can display your text incorrectly or cause your data to not be read correctly by a search engine. A character encoding declaration in your HTML is also important to process unfamiliar characters entered in forms by users, URLs generated by scripts, etc.</p> <p><strong>You should always use the Unicode character encoding UTF-8 for your web pages</strong>, and avoid &#39;legacy&#39; encodings such as ASCII, Windows-1252 and ISO-8859-6 mentioned above. Do not use the UTF-16 Unicode encoding either.</p> <p>It is important to note that it is not enough to simply declare your encoding at the top of the web page. <strong>You have to ensure that your editor saves the file in UTF-8</strong> also. Most editors will do that these days, but you should check.</p> <p>Read an <a href='https://www.w3.org/International/getting-started/characters' target='_blank'>Introduction to character sets and encodings here</a>.</p>"},

  {name: "Module 2", redmine_identifier: "web_module2", course_id: 6,
    image: File.open(File.join(Rails.root, "app/assets/images/HTML5-CSS-Fundamentals.jpg")),
    description: "Hello! Welcome to week 2 of the Introduction to HTML5.
      This week, we are going to cover global and non-global attributes and how to use them, paying close attention to the commonly used ones such as 'id' and 'class'.
      In addition, you'll learn about the importance of separating content and style in HTML5, as well as look at the difference between semantic and style tags.
      We will study semantic elements, why they are important as well as look at their usage in various examples.
      In the second half, we will cover how to add images to your HTML.
      Images make everything more interesting.
      For example, we will learn how to use the image tag and its attributes.
      We will also look at scenarios where it is more appropriate to add images
      using CSS instead. Finally, we will learn how to add hyperlinks
      to your Web page and their different uses. At the end of each subsection, you'll be able to do
      exercises based on what you've learned
      and test your knowledge by doing a quiz.
      We hope you enjoy the course and happy learning!",
    content: ""},

  {name: "Module 3", redmine_identifier: "web_module3", course_id: 6,
    image: File.open(File.join(Rails.root, "app/assets/images/HTML5-CSS-Fundamentals.jpg")),
    description: "Greetings! I'd like to welcome you to week 3 of the introduction to HTML5.
      This week we introduce a new language: CSS.
      CSS is used to style the HTML, it's how we determine the color, text size, spacing and other visual aspects of the Web page. CSS can also be used to lay out the Web page.
      We'll see how to include CSS in your Web page, learn the syntax needed for CSS rules, and introduce a handful of CSS properties with which to start.
      The nice thing about CSS is that it is quite easy, and the immediate visual impact it has is rewarding.
      So prepare to have fun and let yourself experiment.",
    content: ""},

  {name: "Module 4", redmine_identifier: "web_module4", course_id: 6,
    image: File.open(File.join(Rails.root, "app/assets/images/HTML5-CSS-Fundamentals.jpg")),
    description: "Hi! Welcome to week 4 of the introduction to HTML5.
      This week we're going to figure out what to do when your Web page isn't doing what you want.
      We'll learn about the debugger, and how to use it to debug and fix your code.
      We'll explore individual elements in detail,
      and learn where they are in your Web page and where they came from in the source.
      Finally, we'll look into CSS priorities and the 'Box Model' using the debugger to find all the details of an elements style.
      By the end of the week, you'll be able to debug your own code and fix whatever problems you find.
      Have a great week!",
    content: ""},

  {name: "Module 5", redmine_identifier: "web_module5", course_id: 6,
    image: File.open(File.join(Rails.root, "app/assets/images/HTML5-CSS-Fundamentals.jpg")),
    description: "Hello! Welcome to week 5 of the Introduction to HTML5.
      This week, we are getting back into HTML,
      and combining it with CSS to learn some advanced features and design more complex Web pages.
      We will be using all the knowledge and skills we've learned over the past four weeks,
      and see how sophisticated a static Web page can be.
      We will learn about colors, fonts, selectors and pseudo elements.
      We will also be looking at how to use multimedia in our Web pages and even try our hand at some simple animations.
      We hope you have a great time spicing up your Web page.",
    content: ""},

  {name: "Module 6", redmine_identifier: "web_module6", course_id: 6,
    image: File.open(File.join(Rails.root, "app/assets/images/HTML5-CSS-Fundamentals.jpg")),
    description: "In week 6 we are going to be looking at CSS layout. We'll begin with understanding block versus inline display.
      Which will help you understand why it is the browser does what it does when it's laying out the HTML.
      And in the second part, we'll be looking at flexbox, which is a very simple system for giving general guidelines to the browser,
      and having it execute your layout, pretty much magically.",
    content: ""}
])

15.times do |n|
  user_id = Faker::Number.between(2, 38)
  title = Faker::Hipster.sentence
  content = Faker::Hipster.paragraph
  status = Faker::Number.between(0, 4)
  Feedback.create!(user_id: user_id, title: title, content: content, status: status)
end

Conversation.create!([
  {sender_id: 1, receiver_id: 2},
  {sender_id: 1, receiver_id: 3},
  {sender_id: 1, receiver_id: 4},
  {sender_id: 2, receiver_id: 3},
  {sender_id: 2, receiver_id: 4},
  {sender_id: 3, receiver_id: 4}
])

120.times do |n|
  user_id = Faker::Number.between(1, 4)
  conversation_id = Faker::Number.between(1, 6)
  content = Faker::Hipster.sentence
  Message.create!(user_id: user_id, conversation_id: conversation_id, content: content)
end
