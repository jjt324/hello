<!DOCTYPE html>

<html>
    <head>
        <title>Proj</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link
            rel="shortcut icon"
            href="https://avatars0.githubusercontent.com/u/16637209?v=3&s=460"
            type="image/x-icon"/>

        <style type="text/css">
            *,
            body {
                margin: 0;
                padding: 0;
            }

            body {
                margin: 0;
                font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
                font-size: 14px;
                line-height: 20px;
                background-color: #fff;
            }

            footer,
            header {
                width: 960px;
                margin-left: auto;
                margin-right: auto;
            }

            .logo {
                background-image: url( "https://avatars0.githubusercontent.com/u/16637209?v=3&s=460");
                background-repeat: no-repeat;
                -webkit-background-size: 100px 100px;
                background-size: 100px 100px;
                background-position: center center;
                text-align: center;
                font-size: 42px;
                padding: 250px 0 70px;
                font-weight: normal;
                text-shadow: 0 1px 2px #ddd;
            }

            header {
                padding: 100px 0;
            }

            footer {
                line-height: 1.8;
                text-align: center;
                padding: 50px 0;
                color: #999;
            }

            .description {
                text-align: center;
                font-size: 16px;
            }

            a {
                color: #444;
                text-decoration: none;
            }

            .backdrop {
                position: absolute;
                width: 100%;
                height: 100%;
                box-shadow: inset 0 0 100px #ddd;
                z-index: -1;
                top: 0;
                left: 0;
            }

        </style>
    </head>

    <body>
        <header>
            <h1 class="logo">jjt324</h1>
            <div class="description">
                I built this webapp using Beego, a simple & powerful Go web framework
            </div>
        </header>
        <footer>
            <div class="author">
                Official website:
                <a href="http://{{.Website}}">{{.Website}}</a>
                / Contact me:
                <a class="email" href="mailto:{{.Email}}">{{.Email}}</a>
            </div>
        </footer>
        <div class="backdrop"></div>
    </body>
</html>
