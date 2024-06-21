<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../admin/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../admin/assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Register</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body class="bg-dark">
      <div class="container" style="min-height: 100vh; margin-top: 3rem; margin-bottom: 3rem; display: flex; flex-direction: column; justify-content: center; align-items: center;">
        <div class="row justify-content-center">
          <div>
            <h5 class="text-white">Login</h5>
          </div>
          <div>
            <form action="/login_customer" method="POST">
              @csrf
              @if (Session::has('errors'))
                <ul>
                  @foreach (Session::get('errors_login') as $error)
                    <li style="color: red">{{ $error[0] }}</li>
                  @endforeach
                </ul>
              @endif
              @if (Session::has('success'))
                <p style="color: green">{{ Session::get('success') }}</p>
              @endif
              @if (Session::has('failed'))
                <p style="color: red">{{ Session::get('failed') }}</p>
              @endif
              <div>
                <div>
                  <div class="form-group">
                    <label class="text-white">Email</label>
                    <input type="email" class="form-control" placeholder="Email" name='email'>
                  </div>
                </div>
              </div>
              <div>
                <div>
                  <div class="form-group">
                    <label class="text-white">Password</label>
                    <input type="password" class="form-control" placeholder="Password" name="password">
                  </div>
                </div>
              </div>
              <div style="display: flex; justify-content: center; align-items: center; margin: 5px 0;">
                <div class="update ml-auto mr-auto">
                  <input type="submit" class="btn btn-primary btn-round" value="Login" />
                  <a href="/"><span class="btn btn-round btn-danger ms-3">Cancel</span></a>
                </div>
              </div>
            </form>
          </div>
        </div>

        <a href="/register_customer">Register</a>
      </div>
    <script src="/admin/assets/js/jquery.min.js"></script>
    <script>
      $(document).ready(function() {
        demo.initChartsPages();
      });
    </script>
  </body>
</html>
