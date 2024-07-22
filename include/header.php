<?php 
$q2=mysqli_query($con,"SELECT * FROM tbl_settings");
if(mysqli_num_rows($q2)>0){
    $rq2=mysqli_fetch_array($q2);
    echo $rq2['after_body'];
}
?>
<?php  
    $query = mysqli_query($con, "SELECT * FROM tbl_top_category where show_on_menu='1' order by tcat_id");
    while ($record = mysqli_fetch_assoc($query)) {
        $icat_arr[$record['tcat_id']]= $record['tcat_name'];
    }
    $qry_sel_sub = "SELECT * FROM tbl_mid_category where show_home='1' ";
    $rsc_sub = mysqli_query($con, $qry_sel_sub);
    $sub_arr = array();
    while ($row1 = mysqli_fetch_assoc($rsc_sub)) {
        $sub_arr[$row1['tcat_id']][$row1['mcat_id']] = $row1['mcat_name'];
    }
?>
<header class='header header--type-3 header--style-2 position-lg-relative js-header-sticky'>
    <div class="header__spacer header__spacer--d header__spacer--visible" style="height: 98px;"></div>
    <div class="header__content header__content--sticky">
        <div class="header__line-info header__line-info--style-2 d-none d-lg-flex align-items-lg-center px-2 px-lg-0 py-lg-2">
            <div class="container d-flex flex-column flex-lg-row align-items-center">
                <div>
                    <div class="gryffeditor">
                        <ul class="list-unstyled d-flex">
                            <li class="d-flex align-items-center">
                                <span style="color:#fff" class="d-flex">
                                <i class="mr-1">
                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-197" viewBox="0 0 24 24">
                                    <path d="M17.625 21.729c-2.148 0-4.174-.41-6.074-1.23a15.799 15.799 0 0 1-4.971-3.35c-1.413-1.413-2.529-3.069-3.35-4.971S2 8.253 2 6.104c0-.078.016-.156.049-.234a.864.864 0 0 1 .127-.215L5.301 2.53a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176l4.375 4.375c.117.13.176.28.176.449s-.059.319-.176.449l-2.695 2.676 5.371 5.371 2.676-2.695a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176l4.375 4.375c.117.13.176.28.176.449s-.059.319-.176.449l-3.125 3.125a.91.91 0 0 1-.215.127.596.596 0 0 1-.234.049zM5.75 3.858l-2.5 2.5c.039 1.927.433 3.74 1.182 5.439a14.528 14.528 0 0 0 3.037 4.463c1.275 1.276 2.764 2.288 4.463 3.037s3.512 1.143 5.439 1.182l2.5-2.5-3.496-3.496-2.676 2.695a.654.654 0 0 1-.449.176.65.65 0 0 1-.449-.176l-6.25-6.25c-.117-.13-.176-.28-.176-.449s.059-.319.176-.449l2.695-2.676L5.75 3.858z"></path>
                                    </svg>
                                </i><a href="tel:+919871555106">Call Us: +919871555106</a> </span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span style="color:#fff" class="d-flex">
                                <i class="mr-1">
                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-153" viewBox="0 0 24 24">
                                    <path d="M22.072 4.807c.013.026.02.049.02.068v.068c.013.026.02.046.02.059v13.75c0 .17-.062.316-.186.439a.601.601 0 0 1-.439.186H2.736a.598.598 0 0 1-.439-.186.598.598 0 0 1-.186-.439V5.002c0-.013.006-.032.02-.059v-.068c0-.019.006-.042.02-.068a.125.125 0 0 0 .029-.049.444.444 0 0 1 .029-.068.145.145 0 0 0 .02-.059c.013 0 .022-.003.029-.01a.04.04 0 0 0 .01-.029l.038-.039a.214.214 0 0 1 .059-.039l.039-.039c.013-.013.032-.02.059-.02a.125.125 0 0 1 .049-.029.184.184 0 0 1 .049-.01c.026-.013.049-.02.068-.02s.042-.006.068-.02H21.525c.026.014.049.02.068.02s.042.007.068.02c.013 0 .029.004.049.01.02.007.036.017.049.029.026 0 .045.007.059.02l.039.039a.286.286 0 0 1 .059.039l.039.039c0 .014.003.023.01.029.006.007.016.01.029.01 0 .014.006.033.02.059a.587.587 0 0 0 .039.068.102.102 0 0 1 .019.049zm-1.211 13.32V6.232l-8.379 6.152a.57.57 0 0 1-.176.088.659.659 0 0 1-.566-.088L3.361 6.232v11.895h17.5zM4.65 5.627l7.461 5.469 7.461-5.469H4.65z"></path>
                                    </svg>
                                </i>
                                <a href="mailto:support@typecase.in" target="_blank" rel="noopener noreferrer" style="color:#fff">support@typecase.in&nbsp; &nbsp;</a>
                                </span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span style="color:#fff" class="d-flex">
                                <i class="mr-1">
                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-127" viewBox="0 0 24 24">
                                    <path d="M21.648 12.672c.104.052.188.13.254.234a.62.62 0 0 1 .098.332v5a.602.602 0 0 1-.186.439.601.601 0 0 1-.439.186h-2.559a3.043 3.043 0 0 1-1.074 1.787 3.03 3.03 0 0 1-1.992.713c-.756 0-1.42-.238-1.992-.713a3.028 3.028 0 0 1-1.074-1.787h-1.309a.597.597 0 0 1-.439-.186.6.6 0 0 1-.186-.439V4.488H2.625a.597.597 0 0 1-.439-.186A.597.597 0 0 1 2 3.863a.6.6 0 0 1 .186-.439.597.597 0 0 1 .439-.186h8.75a.6.6 0 0 1 .439.186c.123.124.186.27.186.439v2.5h5a.614.614 0 0 1 .586.41l1.797 4.766 2.265 1.133zM9.314 9.674c.123.124.186.27.186.439a.602.602 0 0 1-.186.439.601.601 0 0 1-.439.186h-3.75a.597.597 0 0 1-.439-.186.597.597 0 0 1-.186-.439.6.6 0 0 1 .186-.439.598.598 0 0 1 .439-.186h3.75a.6.6 0 0 1 .439.186zm0 3.125c.123.124.186.27.186.439a.602.602 0 0 1-.186.439.601.601 0 0 1-.439.186h-2.5a.597.597 0 0 1-.439-.186.6.6 0 0 1-.186-.439.6.6 0 0 1 .186-.439.598.598 0 0 1 .439-.186h2.5a.6.6 0 0 1 .439.186zm11.436 4.814v-3.984l-2.148-1.074a.635.635 0 0 1-.195-.146.557.557 0 0 1-.117-.205l-1.719-4.59H12v10h.684a3.033 3.033 0 0 1 1.074-1.787 3.026 3.026 0 0 1 1.992-.713 3.03 3.03 0 0 1 1.992.713 3.041 3.041 0 0 1 1.074 1.787h1.934zm-3.936-6.064c.123.124.186.27.186.439a.602.602 0 0 1-.186.439.601.601 0 0 1-.439.186h-2.5a.597.597 0 0 1-.439-.186.6.6 0 0 1-.186-.439v-2.5a.6.6 0 0 1 .186-.439.598.598 0 0 1 .439-.186.6.6 0 0 1 .439.186c.123.124.186.27.186.439v1.875h1.875a.6.6 0 0 1 .439.186zm.264 8.017a1.81 1.81 0 0 0 .547-1.328 1.81 1.81 0 0 0-.547-1.328 1.812 1.812 0 0 0-1.328-.547 1.81 1.81 0 0 0-1.328.547 1.808 1.808 0 0 0-.547 1.328c0 .521.182.964.547 1.328.364.365.807.547 1.328.547s.963-.182 1.328-.547z"></path>
                                    </svg>&nbsp; </i>Free US Shipping </span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="header__social-media d-flex align-items-center ml-auto">
                    <div class="social-media d-flex flex-wrap justify-content-center justify-content-lg-start">
                        <?php 
                        $social=mysqli_query($con,"SELECT * FROM tbl_social where social_url != ''");
                        if(mysqli_num_rows($social)>0){
                            while($ss=mysqli_fetch_array($social)){
                        ?>
                        <a href="<?php echo $ss['social_url'] ?>" target="_blank" class="social-media__facebook d-flex align-items-center mx-2 mb-1">
                        <i class="<?php echo $ss['social_icon'] ?>">
                        </i>
                        </a>
                        <?php }} ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="header__line-top header__line--colorize-2 position-relative d-flex px-2 py-lg-2">
            <div class="container d-flex">
                <span class="header__btn-menu d-flex align-items-center d-lg-none mr-20 cursor-pointer js-popup-button" onclick="left_open(this)" data-js-popup-button="navigation">
                    <i class="mt-3">
                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-321" viewBox="0 0 24 24">
                            <path d="M0 0h17v1.193H0V0zm0 5.403h17v1.194H0V5.403zm0 5.404h7V12H0v-1.193zM18.325 9.523c.4.168.78.375 1.142.62.36.232.69.503.986.813.31.297.58.627.813.988.245.362.452.743.62 1.143.18.413.309.84.386 1.279.09.426.136.871.136 1.336 0 .413-.04.82-.117 1.22a6.007 6.007 0 0 1-.31 1.143c-.141.375-.315.73-.522 1.066a6.024 6.024 0 0 1-.657.93l3.043 3.048a.515.515 0 0 1 .155.368.57.57 0 0 1-.039.213 1.02 1.02 0 0 1-.116.174.303.303 0 0 0-.077.058.763.763 0 0 1-.097.04.75.75 0 0 1-.097.038h-.193a.75.75 0 0 0-.097-.039.736.736 0 0 0-.097-.038.303.303 0 0 0-.077-.059l-3.043-3.067a6.047 6.047 0 0 1-.948.678c-.323.193-.671.361-1.045.503a6.014 6.014 0 0 1-1.161.349 7.284 7.284 0 0 1-1.2.097 6.692 6.692 0 0 1-2.611-.523 8.28 8.28 0 0 1-1.161-.62 8.472 8.472 0 0 1-.987-.814 8.458 8.458 0 0 1-.813-.988 8.29 8.29 0 0 1-.619-1.162A6.79 6.79 0 0 1 9 15.702c0-.465.045-.91.135-1.336.09-.44.22-.866.387-1.279.18-.4.387-.781.62-1.143.245-.361.515-.69.812-.988a6.472 6.472 0 0 1 2.148-1.433c.4-.18.819-.31 1.257-.387.439-.09.89-.136 1.354-.136.465 0 .91.045 1.335.136.439.077.865.206 1.277.387zM10.47 17.91c.155.35.33.678.523.988a6.114 6.114 0 0 0 1.528 1.53c.31.194.639.369.987.524.335.142.684.251 1.045.329a5.707 5.707 0 0 0 2.283 0 6.19 6.19 0 0 0 1.083-.33c.348-.154.67-.329.967-.522a6.105 6.105 0 0 0 1.529-1.53c.206-.31.38-.64.522-.989.155-.335.264-.684.329-1.046a5.728 5.728 0 0 0 0-2.285 4.579 4.579 0 0 0-.329-1.085 4.987 4.987 0 0 0-.522-.969 6.12 6.12 0 0 0-1.529-1.53 4.963 4.963 0 0 0-.967-.523 4.561 4.561 0 0 0-1.083-.33 5.707 5.707 0 0 0-2.283 0 4.27 4.27 0 0 0-1.045.33 5.532 5.532 0 0 0-.987.523 6.104 6.104 0 0 0-1.528 1.53c-.194.297-.368.62-.523.969-.142.349-.251.71-.329 1.085a5.728 5.728 0 0 0 0 2.286c.078.361.188.71.33 1.045z"></path>
                        </svg>
                    </i>
                </span>
                <div class="header__logo d-flex d-lg-none align-items-center" style="width:66px">
                    <div class="logo h6 w-100 m-0 text-hide">
                        <a href="<?php path(); ?>" itemprop="url" class="d-block text-hide">
                        <div class="rimage">
                            <img class="rimage__img" src="<?php path();?>/assets/images/small.png" alt="Typecase">
                        </div>
                        </a>
                    </div>
                </div>
                <div class="header__logo align-items-center d-none d-lg-flex mr-lg-4" style="width:120px">
                    <h1 class="logo h6 w-100 m-0 text-hide">
                        <a href="<?php path(); ?>" itemprop="url" class="d-block text-hide">
                            <div class="rimage">
                                <img class="rimage__img" src="<?php path();?>/assets/images/logo.gif">
                            </div>
                        </a>
                    </h1>
                </div>
                <div class="header__nav d-none d-lg-flex">
                    <nav class="menu menu--main js-menu js-position menu--loaded">
                        <div class="menu__panel menu__list menu__level-01 d-flex flex-column flex-lg-row flex-lg-wrap">
                            <div class="menu__curtain d-none position-lg-absolute"></div>
                            <div class="menu__item menu__item--has-children position-lg-relative" id="first-menu">
                                <a href="" class='d-flex align-items-center'>
                                    <span>Products</span>
                                    <i class="menu__item_arrow d-none d-lg-flex position-lg-relative mr-0">
                                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-229" viewBox="0 0 24 24">
                                        <path d="M11.783 14.088l-3.75-3.75a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176l3.301 3.32 3.301-3.32a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .841.841 0 0 1-.215-.127z"></path>
                                        </svg>
                                    </i>
                                    <i class="menu__item_arrow d-lg-none ml-auto">
                                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-231" viewBox="0 0 24 24">
                                        <path d="M10.806 7.232l3.75 3.75c.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .877.877 0 0 1-.215-.127.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449l3.32-3.301L9.907 8.13a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.652.652 0 0 1 .449-.176c.169 0 .319.058.45.176z"></path>
                                        </svg>
                                    </i>
                                </a>
                                <div class="menu__dropdown position-lg-absolute animate"style="display:none">
                                    <div class="menu__list menu__list--styled menu__level-02 menu__level-02 p-lg-3">
                                        <div class="menu__item menu__back d-lg-none">
                                            <a href="collection.php">Products</a>
                                        </div>
                                        <?php 
                                            foreach ($icat_arr as $catId => $catName) {
                                            $query = mysqli_query($con, "SELECT * FROM tbl_top_category where tcat_id='$catId'");
                                            $record = mysqli_fetch_assoc($query);
                                            $top=$record['slug'];
                                        ?>
                                        <div class="menu__item menu__item--has-children position-lg-relative">
                                            <div class="menu__item">
                                                <a href="<?php echo path() ?>/category/<?php echo $top ?>" class="d-flex align-items-center px-lg-1">
                                                    <span><?php echo $catName ?></span>
                                                    <?php if (!empty($sub_arr[$catId])) { ?><?php } ?>
                                                </a>
                                            </div>
                                            <?php if (!empty($sub_arr[$catId])) { ?>
                                            <div class="menu__list menu__level-03 position-lg-absolute p-lg-3">
                                                <?php foreach ($sub_arr[$catId] as $scid => $scname) { 
                                                    $query1 = mysqli_query($con, "SELECT * FROM tbl_mid_category where mcat_id='$scid'");
                                                    $record1 = mysqli_fetch_assoc($query1);
                                                    $mid=$record1['slug'];
                                                ?>
                                                <div class="menu__item">
                                                    <a href="<?php echo path() ?>/category/<?php echo $top."/".$mid ?>" class="d-flex align-items-center px-lg-1">
                                                        <span><?php echo $scname ?></span>
                                                    </a>
                                                </div>
                                                <?php } ?>
                                            </div>
                                            <?php } ?>  
                                        </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="menu__item menu__item--has-children position-lg-relative" id="second-menu">
                                <a href="javascript:void(0)" class="d-flex align-items-center">
                                <span>Business</span>
                                <i class="menu__item_arrow d-none d-lg-flex position-lg-relative mr-0">
                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-229" viewBox="0 0 24 24">
                                    <path d="M11.783 14.088l-3.75-3.75a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176l3.301 3.32 3.301-3.32a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .841.841 0 0 1-.215-.127z"></path>
                                    </svg>
                                </i>
                                <i class="menu__item_arrow d-lg-none ml-auto">
                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-231" viewBox="0 0 24 24">
                                    <path d="M10.806 7.232l3.75 3.75c.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .877.877 0 0 1-.215-.127.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449l3.32-3.301L9.907 8.13a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.652.652 0 0 1 .449-.176c.169 0 .319.058.45.176z"></path>
                                    </svg>
                                </i>
                                </a>
                                <div class="menu__dropdown position-lg-absolute" style="display:none">
                                    <div class="menu__list menu__list--styled menu__level-02 menu__level-02 p-lg-3">
                                        <div class="menu__item menu__back d-lg-none">
                                            <a href="javascript:void(0)">Business</a>
                                            </div>
                                            <div class="menu__item">
                                            <a href="<?php echo path() ?>/" class="d-flex align-items-center px-lg-1">
                                                <span>Affiliate Program</span>
                                            </a>
                                            </div>
                                            <div class="menu__item">
                                            <a href="<?php path();?>/become-a-reseller" class="d-flex align-items-center px-lg-1">
                                                <span>Become a Reseller</span>
                                            </a>
                                            </div>
                                            <div class="menu__item">
                                            <a href="<?php echo path() ?>/business-order" class="d-flex align-items-center px-lg-1">
                                                <span>Business Orders</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="menu__item">
                                <a href="<?php echo path() ?>/support" class="d-flex align-items-center">
                                    <span>Support</span>
                                </a>
                            </div>
                            <div class="menu__item">
                                <a href="<?php echo path() ?>/blog-list" class="d-flex align-items-center">
                                    <span>Blog</span>
                                </a>
                            </div>
                        </div>
                    </nav>
                </div>
                <div class="header__sidebar d-flex align-items-center ml-auto">
                    <!--<a href="javascript:void(0)" class="header__btn-search d-none d-lg-flex align-items-lg-center ml-4 ml-lg-3 js-popup-button" data-js-popup-button="navigation">-->
                    <!--    <i>-->
                    <!--        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-168" viewBox="0 0 24 24">-->
                    <!--            <path d="M13.261 2.475a8.177 8.177 0 0 1 2.588 1.738 8.172 8.172 0 0 1 1.738 2.588 7.97 7.97 0 0 1 .635 3.164 7.836 7.836 0 0 1-.527 2.861 8.355 8.355 0 0 1-1.426 2.412l4.902 4.902c.117.131.176.28.176.449s-.059.319-.176.449c-.065.052-.137.095-.215.127s-.156.049-.234.049-.156-.017-.234-.049-.149-.075-.215-.127l-4.902-4.902c-.703.6-1.507 1.074-2.412 1.426s-1.859.528-2.862.528a7.945 7.945 0 0 1-3.164-.635 8.144 8.144 0 0 1-2.588-1.738 8.15 8.15 0 0 1-1.738-2.588 7.962 7.962 0 0 1-.635-3.164 7.97 7.97 0 0 1 .635-3.164 8.172 8.172 0 0 1 1.738-2.588 8.15 8.15 0 0 1 2.588-1.738c.989-.423 2.044-.635 3.164-.635s2.174.212 3.164.635zM3.759 12.641c.358.834.85 1.563 1.475 2.188s1.354 1.117 2.188 1.475c.833.358 1.726.537 2.676.537s1.843-.179 2.676-.537c.833-.357 1.563-.85 2.188-1.475s1.116-1.354 1.475-2.188a6.705 6.705 0 0 0 .537-2.676c0-.95-.179-1.842-.537-2.676-.358-.833-.85-1.563-1.475-2.188s-1.354-1.116-2.188-1.475c-.835-.356-1.727-.536-2.677-.536s-1.843.18-2.676.537c-.833.358-1.563.85-2.188 1.475S4.117 6.456 3.759 7.289a6.694 6.694 0 0 0-.537 2.676c0 .951.178 1.843.537 2.676z"></path>-->
                    <!--        </svg>-->
                    <!--    </i>-->
                    <!--</a>-->
                    <a href="<?php echo path() ?>/customer-service" class="header__btn-services position-relative d-flex align-items-center ml-4 ml-lg-3 js-popup-button">
                        <i>
                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-172" viewBox="0 0 24 24">
                            <path d="M12.139 5.929c-.742 0-1.426.205-2.051.615S9 7.498 8.701 8.175c-.065.156-.068.315-.01.478s.173.277.342.342c.156.078.313.085.469.02s.273-.176.352-.332c.195-.456.501-.82.918-1.094.417-.273.872-.41 1.367-.41.69 0 1.279.244 1.768.732s.732 1.077.732 1.768-.244 1.279-.732 1.768-1.078.732-1.768.732a.598.598 0 0 0-.439.186.601.601 0 0 0-.186.439v1.875a.6.6 0 0 0 .186.439.6.6 0 0 0 .439.186.6.6 0 0 0 .439-.186.601.601 0 0 0 .186-.439V13.37c.885-.144 1.627-.563 2.227-1.26a3.614 3.614 0 0 0 .898-2.432c0-1.028-.368-1.911-1.104-2.646-.736-.735-1.618-1.103-2.646-1.103z"></path>
                            <path d="M21.348 7.917A10.212 10.212 0 0 0 19.2 4.743c-.905-.905-1.963-1.621-3.174-2.148s-2.507-.791-3.887-.791-2.676.264-3.887.791-2.269 1.243-3.174 2.148c-.905.905-1.621 1.963-2.148 3.174s-.791 2.507-.791 3.887.264 2.676.791 3.887 1.243 2.269 2.148 3.174c.905.905 1.963 1.621 3.174 2.148s2.506.791 3.887.791c1.38 0 2.676-.264 3.887-.791s2.269-1.243 3.174-2.148c.905-.905 1.621-1.963 2.148-3.174s.791-2.507.791-3.887-.264-2.676-.791-3.887zm-1.153 7.295a8.897 8.897 0 0 1-1.875 2.773 8.909 8.909 0 0 1-2.773 1.875c-1.062.462-2.197.693-3.408.693s-2.347-.231-3.409-.693a8.886 8.886 0 0 1-2.773-1.875 8.909 8.909 0 0 1-1.875-2.773c-.462-1.062-.693-2.197-.693-3.408s.231-2.347.693-3.408a8.902 8.902 0 0 1 1.875-2.774A8.909 8.909 0 0 1 8.73 3.747c1.061-.462 2.197-.693 3.408-.693s2.347.231 3.408.693a8.909 8.909 0 0 1 2.773 1.875 8.909 8.909 0 0 1 1.875 2.773c.462 1.062.693 2.197.693 3.408s-.23 2.347-.692 3.409z"></path>
                            <circle cx="12.139" cy="17.438" r=".74"></circle>
                        </svg>
                        </i>
                    </a>
                    <div id="ssw-topauth" class="ssw-topauth">
                        <a id="customer_login_link" class="header__btn-account d-flex align-items-center position-relative ml-4 ml-lg-3" href="<?php echo path() ?>/login">
                            <i>
                                <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-201" viewBox="0 0 24 24">
                                <path d="M4.023 22.167h-1.25v-.625c0-1.042.163-2.034.488-2.979a9.524 9.524 0 0 1 1.357-2.588 9.366 9.366 0 0 1 2.061-2.031 9.58 9.58 0 0 1 2.598-1.328 5.588 5.588 0 0 1-1.992-2.002 5.413 5.413 0 0 1-.762-2.822c0-.781.146-1.51.439-2.188A5.707 5.707 0 0 1 9.96 2.606c.677-.293 1.406-.439 2.188-.439s1.51.146 2.188.439a5.724 5.724 0 0 1 2.998 2.998c.293.677.439 1.406.439 2.188 0 1.029-.254 1.97-.762 2.822a5.588 5.588 0 0 1-1.992 2.002 9.623 9.623 0 0 1 2.598 1.328 9.41 9.41 0 0 1 3.418 4.619c.325.944.488 1.937.488 2.979v.625h-1.25v-.625c0-1.12-.212-2.174-.635-3.164A8.172 8.172 0 0 0 17.9 15.79a8.172 8.172 0 0 0-2.588-1.738 7.966 7.966 0 0 0-3.164-.635c-1.12 0-2.175.212-3.164.635a8.15 8.15 0 0 0-2.588 1.738 8.155 8.155 0 0 0-1.738 2.588 7.966 7.966 0 0 0-.635 3.164v.625zM8.115 9.491a4.364 4.364 0 0 0 2.334 2.334 4.28 4.28 0 0 0 1.699.342 4.375 4.375 0 0 0 4.033-2.676 4.28 4.28 0 0 0 .342-1.699 4.28 4.28 0 0 0-.342-1.699 4.392 4.392 0 0 0-.938-1.396 4.4 4.4 0 0 0-1.396-.937 4.284 4.284 0 0 0-1.699-.342c-.599 0-1.166.114-1.699.342-.534.228-1 .541-1.396.937-.397.397-.71.863-.938 1.396a4.28 4.28 0 0 0-.342 1.699c0 .599.114 1.165.342 1.699z"></path>
                                </svg>
                            </i>
                        </a>
                    </div>
                    <div class="ml-4 ml-lg-3">
                        <a href="<?php path() ?>/cart" data-id="cart_popup" class="header__btn-cart position-relative d-flex align-items-center text-nowrap js-popup-button count-cart" data-js-popup-button="cart">
                            <i class="mr-lg-7">
                                <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-109" viewBox="0 0 24 24">
                                <path d="M19.884 21.897a.601.601 0 0 1-.439.186h-15a.6.6 0 0 1-.439-.186.601.601 0 0 1-.186-.439v-15a.6.6 0 0 1 .186-.439.601.601 0 0 1 .439-.186h3.75c0-1.028.368-1.911 1.104-2.646.735-.735 1.618-1.104 2.646-1.104s1.911.368 2.646 1.104c.735.736 1.104 1.618 1.104 2.646h3.75a.6.6 0 0 1 .439.186.601.601 0 0 1 .186.439v15a.604.604 0 0 1-.186.439zM18.819 7.083h-3.125v2.5a.598.598 0 0 1-.186.439c-.124.124-.271.186-.439.186s-.315-.062-.439-.186a.6.6 0 0 1-.186-.439v-2.5h-5v2.5a.598.598 0 0 1-.186.439c-.124.124-.271.186-.439.186s-.315-.062-.439-.186a.6.6 0 0 1-.186-.439v-2.5H5.069v13.75h13.75V7.083zm-8.642-3.018a2.409 2.409 0 0 0-.733 1.768h5c0-.69-.244-1.279-.732-1.768s-1.077-.732-1.768-.732-1.279.244-1.767.732z"></path>
                                </svg>
                            </i>
                            <span class="item-quantity-tag count_cart" data-js-cart-count-desktop="0">Bag (<?php if(isset($_SESSION['cart'])){ echo count($_SESSION['cart']);} ?>)</span>
                            <!--<span class="header__counter d-lg-none" data-js-cart-count-mobile="0">0</span>-->
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="hotline-phone-ring-wrap">
    <div class="hotline-phone-ring">
        <div class="hotline-phone-ring-circle"></div>
        <div class="hotline-phone-ring-circle-fill"></div>
        <div class="hotline-phone-ring-img-circle">
          <a href="https://wa.me/9871555106" target="_blank" class="whatsapp-msg"><img src="<?php path();?>/assets/images/whatsapp.png" alt="whatsapp icon"></a>
        </div>
    </div>
</div>