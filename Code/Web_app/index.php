<html lang="en">
<head>

<?php
/**
   * This segment of code is responsible for loading entries from the job_master
   * table and putting them into the drop-down in the form
   * @var object paramsFile and
   * @var params associative array(string) extracts content from parameters.json
   * @var skill_ids array(int) stores the IDs of the job_master table entries
   * @var skill_array array(string) stores the titles of the job_master table entries.
    */
$paramsFile = file_get_contents("parameters.json");
$params = json_decode($paramsFile, true);

/**
   * @var servername string and
   * @var username string and
   * @var password string and
   * @var db string variables store the connection parameters for $conn
   */
$servername = $params["server_name"];
$username = $params["user_name"];
$password = $params["password"];
$db = $params["db_name"];

$conn = new mysqli($servername, $username, $password, $db);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * FROM job_master";
$result = $conn->query($sql);
$skill_array = array();
$skill_ids = array();
$len = $result->num_rows;
if ($len > 0) {
  while($row = $result->fetch_assoc()) {
    array_push($skill_array, $row["job_title"]);
    array_push($skill_ids, $row["job_id"]);
  }
}
$conn->close();
?>


<!-- We use Bootstrap CSS for styling purposes-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style media="screen">
  input[type="email"]::placeholder {
      text-align: center;
  }
  input[type="text"]::placeholder {
      text-align: center;
  }
</style>
<title> S.R.I.J.A.S. </title>
</head>
<body>
<!-- Here, we create a simple form with the options to add name, email, job type and upload a .pdf file-->
  <div style="background: url(https://i.postimg.cc/qzVKQncC/bg.jpg)no-repeat; background-size: cover;" class="jumbotron bg-cover text-white">
      <div class="container py-5 text-center">
          <h1 class="display-4 font-weight-bold">S.R.I.J.A.S. (Smart Resume Interpreter And Job Alerts System)</h1>
      </div>
  </div>

<div class="align-items-center" align = "center">
  <form method="post" enctype="multipart/form-data" action="sendData.php">

    <div class="form-group col-4">
      <label for="inputName">Name</label>
      <input type="text" class="form-control" name="inputName" id="inputName" placeholder="Enter Your Name" text-align="center" required>
    </div>

    <div class="form-group  col-4">
      <label for="inputEmail">Email address</label>
      <input type="email" name="inputEmail" class="form-control" id="inputEmail" placeholder="Enter email" required>
    </div>


    <div class="form-group  col-4">
      <label for="inputPassword">Password</label>
      <input type="password" name="inputPassword" class="form-control" id="inputPassword" placeholder="Enter Password" required>
    </div>

    <div class="form-group  col-4">
      <label for="inputLocation">Location</label>
      <input type="text" name="inputLocation" class="form-control" id="inputLocation" placeholder="Enter Location">
    </div>

    <div class="form-group  col-4">
      <label for="inputThreshold">Threshold for Skill Matching</label>
      <input type="text" name="inputThreshold" class="form-control" id="inputThreshold" placeholder="Enter Threshold in percentage">
    </div>

    <div class="col-auto my-1 col-4">
      <label for="inputJobTypeId">Type Of Job You Are Looking For: </label>
      <select class="custom-select mr-sm-2" id="inputJobTypeId" name="inputJobTypeId" required>
        <option selected>Choose...</option>
        <?php
        $count = 0;
        foreach($skill_array as $skill){
        echo "<option value='".$skill_ids[$count]."'>".$skill."</option>";
        $count = $count+1;
      }
      ?>
      </select>
    </div>

    <div class="form-group  col-4">
      <label for="uploadResume">Upload Your Resume</label>
      <input type="file" class="form-control-file" id="uploadResume" name="uploadResume" required>
    </div>

    <div class="col-auto my-1">
      <button type="submit" value="Submit" id="submit" name="submit" class="btn btn-primary col-auto">Submit</button>
    </div>

    <a href="login.php">Already a user?<a/>

  </form>
</div>
<!-- Here, we add a link to a useful resource for job searches-->
<div class="container hero">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h1 class="text-center">Job Search Was Never This Easy!</h1>
            <h4 class="text-center"> Wake up to email updates about what happened in the last one day, and get up to speed with applying for that dream job.</h4>
            <div class="embed-responsive embed-responsive-16by9"><iframe width="560" height="315" src="https://www.youtube.com/embed/u75hUSShvnc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
        </div>
    </div>
</div>
<br>
<div align="center">Made with <span style="color: #e25555;">&hearts;</span>. Contribute on GitHub.</div>
<br>
<br>
<br>
<br>
</body>
</html>

<!-- <script>

function submitter() {
  var name = document.getElementById("inputName").value;
  var email = document.getElementById("inputEmail").value;

  window.alert(name);
}

</script> -->
