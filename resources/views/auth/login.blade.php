<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Login</title>
</head>

<body class="bg-gradient-primary">   
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-8">
        
                <div class="card">
                    <div>Login</div>
                    <div>
                        @if ($errors->any())
                        <div>
                            <strong>Failed</strong>
                            <p>{{ $errors->first() }}</p>
                        </div>
                        @endif
                        <form method="POST" action="/login" class="form-login">
                            @csrf
                            <div>
                                <label for="email">Email Address</label>
                                <div>
                                    <input type="email"
                                            id="exampleInputEmail" aria-describedby="emailHelp"
                                            placeholder="Email" name="email" class="email">
                                    @error('email')
                                    <small>
                                        {{ $message }}
                                    </small>
                                    @enderror
                                </div>
                            </div>
                            <div>
                                <label for="password">Password</label>
                                <div class="col-md-6">
                                    <input type="password" class="password"
                                        id="exampleInputPassword" placeholder="Password" name="password">
                                    @error('password')
                                    <small>
                                        {{ $message }}
                                    </small>
                                    @enderror
                                </div>
                            </div>
                            <div>
                                <button type="submit">Login</button>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>    
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>  
    <script src="admin/assets/js/jquery.min.js"></script>
    <script>
        $(function(){
            function setCookie(name,value,days) {
                var expires = "";
                if (days){
                    var date = new Date();
                    date.setTime(date.getTime()+(days*24*60*60*1000));
                    expires = "; expires=" + date.toUTCString();
                }
                document.cookie = name+"="+value+expires+"; path=/";
            }

            $('.form-login').submit(function(e){
                e.preventDefault();
                const email = $('.email').val();
                const password = $('.password').val();
                const csrf_token = $('meta[name="csrf-token"]').attr('content');

                $.ajax({
                    url : '/login',
                    type : 'POST',
                    data : {
                        email : email,
                        password : password,
                        _token : csrf_token
                    },
                    success : function(data){
                        if(!data.success){
                            alert(data.message);
                        }
                        setCookie('token', data.token, 7);
                        window.location.href = '/dashboard';
                    }
                })
            })
        })
    </script>

</body>

</html>