<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <title>Events!</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet">
    <link href="../../../resources/css/new_styles.css" rel="stylesheet">
</head>
<body>
<header>
    <nav class="navbar navbar-default navbar-inverse" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Events!</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Ratings</a></li>
                    <li><a href="#">Gallery</a></li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Search</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span
                                class="caret"></span></a>
                        <ul id="login-dp" class="dropdown-menu">
                            <li>
                                <div class="row">
                                    <div class="col-md-12">
                                        <form class="form" role="form" method="post" action="login"
                                              accept-charset="UTF-8" id="login-nav">
                                            <div class="form-group">
                                                <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                                <input type="email" class="form-control" id="exampleInputEmail2"
                                                       placeholder="Email address" required>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword2"
                                                       placeholder="Password" required>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="bottom text-center">
                                        New here ? <a href="#"><b>Join Us</b></a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div class="main-content">
    <div class="all-events page">
        <div class="filters">
            <form>
                <div class="filter-criteria">
                    <span>Category</span>
                    <label><input type="checkbox" name="category" value="nature">Nature</label>
                    <label><input type="checkbox" name="category" value="movie">Movie</label>
                    <label><input type="checkbox" name="category" value="theatre">Theatre</label>
                    <label><input type="checkbox" name="category" value="pub">Pub</label>
                    <label><input type="checkbox" name="category" value="sport">Sport</label>
                    <label><input type="checkbox" name="category" value="other">Other</label>
                </div>
                <div class="filter-criteria">
                    <span>Date</span>
                    <label><input type="checkbox" value="1" name="camera">Today</label>
                    <label><input type="checkbox" value="7" name="camera">Week</label>
                    <label><input type="checkbox" value="30" name="camera">Month</label>
                </div>
                <button class="btn btn-primary">Clear filters</button>
            </form>
        </div>

        <ul class="events-list">
            <script id="events-template" type="x-handlebars-template">​
            {{#each this}}
            <li data-index="{{id}}">
                <%--<a href="#" class="event-photo"><img src="{{image.small}}" height="130" alt="{{name}}"/></a>--%>
                <h2><a href="#"> {{name}} </a></h2>
                <ul class="event-description">
                    <li><span>Category: </span>{{category}}</li>
                    <li><span>Owner: </span>{{owner}}</li>
                    <li><span>Begin: </span>{{startTime}}</li>
                    <li><span>End: </span>{{endTime}}</li>
                </ul>
                <button class="btn btn-primary">Open event</button>
                <div class="highlight"></div>
            </li>
            {{/each}}
            </script>
        </ul>

    </div>
    <div class="single-event page">
        <div class="overlay"></div>
        <div class="preview-large">
            <h3></h3>

            <form class="event-information">
                <ul>
                    <li>
                        <label><b>Owner:</b></label>
                        <input id="owner"/>
                    </li>
                    <li>
                        <label><b>Start:</b></label>
                        <input id="start"/>
                    </li>
                    <li>
                        <label><b>End:</b></label>
                        <input id="end"/>
                    </li>
                    <li>
                        <label><b>Description:</b></label>
                        <textarea id="description" title="Description:"></textarea>
                    </li>
                </ul>
                <button class="btn btn-primary">I'll be there!</button>
            </form>
            <span class="edit"></span>
            <span class="close"></span>
        </div>
    </div>
    <div class="error page">
        <h3>Sorry, something went wrong :(</h3>
    </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/2.0.0/handlebars.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="../../../resources/js/moment.js"></script>
<script src="../../../resources/js/script.js"></script>
<script>
    $('.dropdown-toggle').dropdown();
</script>
</body>
</html>
