<script type="text/javascript" src="/js/jcarousellite.js"></script>
<div class="welcome"><div class="welcome-inner grids">
    <div class="grid grid-14 grid-suff2">
        <h1>Welcome to HighlightFront!</h1>
        <p>Get started by registering now. Need an invite? HighlightFront is the best place for high school athletes to upload, edit, and share their highlights with friends, fans, and scouts. Get noticed and keep an eye on the competition.</p>
        <div class="buttons clearfix">
            <div class="shadow1"><a class="control button2" href="/user/register"><span><span>Join Now</span></span></a></div>
            <div class="shadow1"><a class="control button2" href="/user/invite_request" id="inviteRequest"><span><span>Request Invite</span></span></a></div>
        </div>
    </div>

    <div class="grid grid-8 shadow2">
        <h1 class="block-head"><span><span><strong class="icon icon-lock"></strong> Already A Member?</span></span></h1>
        <div class="block-body form">
            <form action="/user/login" method="post">
                <div class="row input"><input class="w240px" type="text" name="email" value="" placeholder="Your E-mail" /></div>
                <div class="row input"><input class="w240px" type="password" name="password" value="" placeholder="Password" /></div>
                <div class="row checkbox clearfix buttons">
                    <div class="fl">
                        <input type="checkbox" name="rememberme" id="rememberme" value="Password" />
                        <label for="rememberme" >Remember Me.</label>
                    </div>
                    <div class="fr">
                        <div class="buttons clearfix"><button class="control button1" type="submit"><span><span>Login</span></span></button></div>
                    </div>
                </div>
                <div class="row forgot last"><a href="/user/forgot_password">¿Has olvidado tu contrase&ntilde;a?</a></div>
            </form>
        </div>
    </div>
</div></div>

<div class="grids">
    <div class="grid grid-12 featured">
        <h1 class="block-head2 clearfix">Featured Video</h1>
        <div class="block-body2"  style="width:460px; overflow: hidden">
            
        <div id="featured_carousel" style="width:460px !important;">
            <ul class="p0">
            <?php
            $media_files=array();
            foreach($media_files as $media):
            ?>
            <li class="m0" style="display:block;width:460px;height:204px;" >
            <a href="/video/get/<?php echo $media->id; ?>"><img style="display:block;width:460px;height:204px" src="<?php echo $media->thumb_url; ?>">
            <img title="" alt="" src="/images/play.png" style="position: relative; top: -166px; left: 166px; z-index: 100;"></a>
            </li>
            <?php endforeach ?>
            </ul>
            </div>



            <ul class="pager clearfix"><li class="previous"><a href="#"><strong class="icon-small icon-left"></strong> Previous</a></li><li class="next fr"><a href="#">Next <strong class="icon-small icon-right"></strong></a></li></ul>
        </div>
        <script>
            $(function() {
                $("#featured_carousel").jCarouselLite({
                    btnNext: ".next",
                    btnPrev: ".previous"
                });
            });
        </script>
    </div>
    <div class="grid grid-6 videos">
        <h1 class="block-head2 clearfix"><span class="filter"><strong class="icon-small icon-down2"></strong> Football</span></h1>
        <div class="block-body2">
            <div class="images clearfix">
                <a class="first" href="#"><img src="/images/temp/welcome2.png" alt="" /></a>
                <a class="last" href="#"><img src="/images/temp/welcome3.png" alt="" /></a>
                <a class="first" href="#"><img src="/images/temp/welcome2.png" alt="" /></a>
                <a class="last" href="#"><img src="/images/temp/welcome3.png" alt="" /></a>
            </div>
            <ul class="pager clearfix"><li class="previous"><a href="#"><strong class="icon-small icon-left"></strong> Previous</a></li><li class="next fr"><a href="#">Next <strong class="icon-small icon-right"></strong></a></li></ul>
        </div>
    </div>
    <div class="grid grid-6 thumb">
        <h1 class="block-head2 clearfix">Billy Madison</h1>
        <div class="block-body2">
            <a href="#"><img src="/images/temp/welcome4.png" alt="" /></a>
            <p><span class="label">School</span><span class="value">Highschool</span></p>
            <p><span class="label">Sport</span><span class="value">Football</span></p>
            <p><span class="label">Grade</span><span class="value">11</span></p>
            <p><span class="label">Graduating</span><span class="value">2011</span></p>
            <p class="last"><span class="label">Position</span><span class="value">Runningback</span></p>
        </div>
    </div>
</div>
