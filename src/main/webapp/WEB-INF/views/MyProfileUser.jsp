<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<jsp:include page="AllCss.jsp"></jsp:include>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<jsp:include page="UserSideBar.jsp"></jsp:include>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>Profile</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Profile</li>
          <li class="breadcrumb-item active">My Profile</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

              <img src="${user.imageUrl}" alt="Profile" class="rounded-circle">
              <h2>${user.firstName}</h2>
              <h3>${user.role==1?"Admin":"User"}</h3>
              <div class="social-links mt-2">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
                </li>

                <!-- <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-settings">Settings</button>
                </li>-->

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
                </li>

              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  <!--<h5 class="card-title">About</h5>
                  <p class="small fst-italic">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</p>-->
                  <h5 class="card-title">Profile Details</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Full Name</div>
                    <div class="col-lg-9 col-md-8">${user.firstName}</div>
                  </div>

                </div>

                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                  <!-- Profile Edit Form -->
                  <form action="saveprofilepic" method="post" enctype="multipart/form-data">
                    <div class="row mb-3">
                      <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                      <div class="col-md-8 col-lg-9">
                        <img src="${user.imageUrl}" alt="Profile">
                        <!--<div class="pt-2">
                          <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
                          <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
                        </div>-->
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Profile Pic</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="profileImg" type="file" class="form-control" id="fullName" value="Kevin Anderson">
                      </div>
                    </div>
                   
                   
                   <input type="hidden" name="userId" value="${user.userId}">
                 
                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                  </form><!-- End Profile Edit Form -->

                </div>

                <div class="tab-pane fade pt-3" id="profile-settings">

                  <!-- Settings Form -->
                  <form>

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Email Notifications</label>
                      <div class="col-md-8 col-lg-9">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="changesMade" checked>
                          <label class="form-check-label" for="changesMade">
                            Changes made to your account
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="newProducts" checked>
                          <label class="form-check-label" for="newProducts">
                            Information on new products and services
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="proOffers">
                          <label class="form-check-label" for="proOffers">
                            Marketing and promo offers
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="securityNotify" checked disabled>
                          <label class="form-check-label" for="securityNotify">
                            Security alerts
                          </label>
                        </div>
                      </div>
                    </div>
                    

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                  </form><!-- End settings Form -->

                </div>

                <div class="tab-pane fade pt-3" id="profile-change-password">
                  <!-- Change Password Form -->
                  <form action="updatechangepassword" method="post" id="myform">

                    <div class="row mb-3">
                      <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="password" type="password" class="form-control" id="currentPassword">
                        <span id="currentPasswordError" class="error"></span>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="newPassword" type="password" class="form-control" id="newPassword">
                        <span id="newPasswordError" class="error"></span>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="renewpassword" type="password" class="form-control" id="reNewPassword">
                        <span id="reNewPasswordError" class="error"></span>
                      </div>
                    </div>

                    <div class="text-center">
                      <input type="button" class="btn btn-primary" value="Change Password" onclick="validation()"/>
                    </div>
                  </form><!-- End Change Password Form -->

                </div>

              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>

<script type="text/javascript">
		function validation() {
			isError = false;
			currrentpassword = document.getElementById("currentPassword");
			currentPasswordError = document.getElementById("currentPasswordError");
			currentPasswordRegex = /^[0-9]+$/;

			newPassword = document.getElementById("newPassword");
			newPasswordError = document.getElementById("newPasswordError");
			newPasswordRegex = /^[0-9]+$/;

			rewNewPassword = document.getElementById("reNewPassword");
			reNewPasswordError = document.getElementById("reNewPasswordError");
			reNewPasswordRegex = /^[0-9]+$/;
			
			if (currentPassword.value == '') {
				currentPasswordError.innerHTML = "Please Enter Current Password";
				isError = true;
			} else {
				if (currentPasswordRegex.test(currentPassword.value) == false) {
					currentPasswordError.innerHTML = "Please Enter Valid Current Password";
					isError = true;
				} else {
					currentPasswordError.innerHTML = "";
				}
			}
			if (newPassword.value == '') {
				newPasswordError.innerHTML = "Please Enter New Password";
				isError = true;
			} else {
				if (newPasswordRegex.test(newPassword.value) == false) {
					newPasswordError.innerHTML = "Please Enter Valid New Password";
					isError = true;
				} else {
					newPasswordError.innerHTML = "";
				}
			}
			if (reNewPassword.value == '') {
				reNewPasswordError.innerHTML = "Please Enter Re-New Password";
				isError = true;
			} else {
				if (reNewPasswordRegex.test(reNewPassword.value) == false) {
					reNewPasswordError.innerHTML = "Please Enter Valid Re-New Password";
					isError = true;
				} else {
					reNewPasswordError.innerHTML = "";
				}
			}
			if (isError == false) {
				myform = document.getElementById("myform");
				myform.submit();
			}
		}
			</script>
</body>
</html>
 