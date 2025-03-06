<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile Form</title>
        <link href="${pageContext.request.contextPath}/assets/css/admin-add-users.css" rel="stylesheet" type="text/css"/>
    <div class="progress-container">
        <div class="step active" id="re">
            <div class="step-circle">1</div>
            <div class="step-text">Register</div>
        </div>
        <div class="progress-line"></div>
        <div class="step inactive" id="pro">
            <div class="step-circle">2</div>
            <div class="step-text">Profile</div>
        </div>
        <div class="progress-line"></div>
        <div class="step inactive" id="bil">
            <div class="step-circle">3</div>
            <div class="step-text">Confirmation</div>
        </div>
    </div>
</head>

<body class="bd">
    <form action="ads" method="post">

        <div class="create" id="Register">
            <h2>Register</h2>
            <div class="input-container">
                <input type="text" name="username" id="username" required="">
                <label for="username">User Name</label>
            </div>

            <div class="input-container">
                <input type="password" name="password" id="password" required="">
                <label for="password">Password</label>
            </div>

            <div class="form-footer">
                <button type="button" class="btn-1" id="next-1">Next ></button>
            </div>
        </div>


        <div class="container" id="Profile">
            <h2 class="title">Profile</h2>

            <div class="form-group">
                <label class="lab">Avatar</label>
                <div class="avatar">
                    <label for="avatarUpload">
                        <img id="avatarPreview" src="https://via.placeholder.com/60">
                        <input type="file" id="avatarUpload" name="img" onchange="previewAvatar(event)" required="">
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="lab">Full Name</label>
                <input class="inp" type="text" name="first-name" id="first-name" placeholder="First Name" required="">
                <input class="inp" type="text" name="last-name" id="last-name" placeholder="Last Name" required="">
            </div>

            <div class="form-group">
                <label class="lab">Email</label>
                <input class="inp" type="text" name="email" id="email" placeholder="example@domain.com" required="">
            </div>

            <div class="form-group">
                <label class="lab">Phone (Optional)</label>
                <input class="inp" type="number" name="phone" id="phone" placeholder="+x(xxx)xxx-xx-xx" required="">
            </div>

            <div class="form-group">
                <label class="lab">Birth Day</label>
                <input class="inp" type="date" name="date" id="date" placeholder="Birth Day" required="">
            </div>

            <div class="form-group">
                <label class="lab">Address</label>
                <input class="inp" type="text" name="address" id="address" placeholder="Address" required="">
            </div>

            <div class="form-group">
                <label class="lab">Account Type</label>
                <div class="radio-group">
                    <div class="roll">
                        <button type="button"> <input type="radio" name="account-type" id="User"> <label>User</label></button>
                    </div>
                    <div class="roll">
                        <button type="button">  <input type="radio" name="account-type" id="Admin"> <label>Admin</label></button>
                    </div>
                </div>
            </div>
            <div class="form-footer-1">
                <button type="button" class="pre" id="pre">< Previous step</button>
                <button type="button" class="btn" id="next-2">Next ></button>
            </div>
        </div>


        <div class="conf" id="conf">
            <div class="header">
                <img class="avatar-1" src="https://via.placeholder.com/60" id="avatarPreview-value" alt="User Avatar">
            </div>
            <div class="profile-details">
                <p><span class="span-title">Full name:</span> <span class="span-value" id="fullname-value">Can't be empty</span></p>
                <p><span class="span-title">User name:</span> <span class="span-value" id="username-value">Can't be empty</span></p>
                <p><span class="span-title">Password:</span> <span class="span-value" id="password-value">Can't be empty</span></p>
                <p><span class="span-title">Email:</span> <span class="span-value" id="email-value">Can't be empty</span></p>
                <p><span class="span-title">Phone:</span> <span class="span-value" id="phone-value">Can't be empty</span></p>
                <p><span class="span-title">Birth Day:</span> <span class="span-value" id="birthday-value">Can't be empty</span></p>
                <p><span class="span-title">Address:</span> <span class="span-value" id="address-value">Can't be empty</span></p>
                <p><span class="span-title">Account Type:</span> <span class="span-value" id="roll-value">Can't be empty</span></p>
            </div>
            <div class="buttons">   
                <button type="button" class="pre" id="pre-1">< Previous step</button>
                <button type="submit" class="btn">Add user</button>
            </div>
        </div>

        <script>
            function previewAvatar(event) {
                const reader = new FileReader();
                reader.onload = function () {
                    document.getElementById('avatarPreview').src = reader.result;
                    document.getElementById('avatarPreview-value').src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            }

            document.getElementById("next-1").addEventListener("click", function () {

                document.getElementById("Profile").style.display = "block";
                document.getElementById("Register").style.display = "none";
                var pro = document.getElementById("pro");
                pro.classList.remove("inactive");
                pro.classList.add("active");

                let fullname = document.getElementById("username").value;
                if (fullname.trim() !== "") {
                    let fullNameElement = document.getElementById("username-value");

                    fullNameElement.innerText = fullname;
                    fullNameElement.style.color = "black";
                }
                ;

                let password = document.getElementById("password").value;
                if (password.trim() !== "") {
                    let fullNameElement = document.getElementById("password-value");

                    fullNameElement.innerText = password;
                    fullNameElement.style.color = "black";
                }


            });

            document.getElementById("pre").addEventListener("click", function () {
                document.getElementById("Profile").style.display = "none";
                document.getElementById("Register").style.display = "block";
                var re = document.getElementById("re");
                var pro = document.getElementById("pro");
                re.classList.remove("inactive");
                re.classList.add("active");
                pro.classList.remove("active");
                pro.classList.add("inactive");
            });

            document.getElementById("next-2").addEventListener("click", function () {
                document.getElementById("Profile").style.display = "none";
                document.getElementById("conf").style.display = "block";
                var bil = document.getElementById("bil");
                bil.classList.remove("inactive");
                bil.classList.add("active");

                let first = document.getElementById("first-name").value;
                let last = document.getElementById("last-name").value;
                if (first.trim() !== "" && last.trim() !== "") {
                    let fullNameElement = document.getElementById("fullname-value");

                    fullNameElement.innerText = first + " " + last;
                    fullNameElement.style.color = "black";
                }

                let email = document.getElementById("email").value;
                if (email.trim() !== "") {
                    let fullNameElement = document.getElementById("email-value");

                    if (email.includes("@email.com")) {
                        fullNameElement.innerText = email;
                    } else {
                        fullNameElement.innerText = email + "@email.com";
                    }

                    fullNameElement.style.color = "black";
                }

                let phone = document.getElementById("phone").value;
                if (phone.trim() !== "") {
                    let phoneElement = document.getElementById("phone-value");
                    phoneElement.innerText = phone;
                    phoneElement.style.color = "black";
                }

                let address = document.getElementById("address").value;
                if (address.trim() !== "") {
                    let fullNameElement = document.getElementById("address-value");

                    fullNameElement.innerText = address;
                    fullNameElement.style.color = "black";
                }

                let birthday = document.getElementById("date").value;
                if (birthday.trim() !== "") {
                    let fullNameElement = document.getElementById("birthday-value");

                    fullNameElement.innerText = birthday;
                    fullNameElement.style.color = "black";
                }

                let selectedRole = document.querySelector('input[name="account-type"]:checked');

                if (selectedRole) {
                    let rollValueElement = document.getElementById("roll-value");

                    rollValueElement.innerText = selectedRole.id; // C?p nh?t n?i dung
                    rollValueElement.style.color = "black"; // ??i màu ch? thành ?en
                }




            });

            document.getElementById("pre-1").addEventListener("click", function () {
                document.getElementById("Profile").style.display = "block";
                document.getElementById("conf").style.display = "none";
                var pro = document.getElementById("pro");
                var bil = document.getElementById("bil");
                pro.classList.remove("inactive");
                pro.classList.add("active");
                bil.classList.remove("active");
                bil.classList.add("inactive");
            });






        </script>
</body>

</html>