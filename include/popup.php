<div class="popup fixed-stretch d-none js-popup">
    <div class="popup__bg fixed-stretch cursor-pointer pointer-events-none"></div>
    <div class="popup__body position-relative d-none flex-lg-column" id="navigation">
        <div class="popup-navigation js-popup-navigation">
            <div class="popup-navigation__head p-2 pt-3 d-lg-none">
                <div class="container">
                    <div class="popup-navigation__button d-flex align-items-center" data-js-popup-navigation-button="close">
                        <i class="popup-navigation__close cursor-pointer" data-js-popup-close="" data-button-content="close">
                            <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-164" viewBox="0 0 24 24">
                                <path d="M19.583 4.965a.65.65 0 0 1-.176.449l-6.445 6.426 6.445 6.426c.117.131.176.28.176.449a.65.65 0 0 1-.176.449.846.846 0 0 1-.215.127.596.596 0 0 1-.468 0 .846.846 0 0 1-.215-.127l-6.426-6.445-6.426 6.445a.846.846 0 0 1-.215.127.596.596 0 0 1-.468 0 .846.846 0 0 1-.215-.127.65.65 0 0 1-.176-.449c0-.169.059-.318.176-.449l6.445-6.426-6.445-6.426a.65.65 0 0 1-.176-.449c0-.169.059-.318.176-.449a.652.652 0 0 1 .449-.176c.169 0 .319.059.449.176l6.426 6.445 6.426-6.445a.652.652 0 0 1 .449-.176c.169 0 .319.059.449.176.117.13.176.28.176.449z"></path>
                            </svg>
                        </i>
                        <i class="popup-navigation__back cursor-pointer d-lg-none" data-button-content="back">
                            <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-012" viewBox="0 0 24 24">
                                <path d="M21.036 12.569a.601.601 0 0 1-.439.186H4.601l4.57 4.551c.117.13.176.28.176.449a.652.652 0 0 1-.176.449.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .877.877 0 0 1-.215-.127l-5.625-5.625a2.48 2.48 0 0 1-.068-.107c-.02-.032-.042-.068-.068-.107a.736.736 0 0 1 0-.468 2.48 2.48 0 0 0 .068-.107c.02-.032.042-.068.068-.107l5.625-5.625a.652.652 0 0 1 .449-.176c.169 0 .319.059.449.176.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-4.57 4.551h15.996a.6.6 0 0 1 .439.186.601.601 0 0 1 .186.439.599.599 0 0 1-.186.437z"></path>
                            </svg>
                        </i>
                    </div>
                </div>
            </div>
            <!--<div class="popup-navigation__search search pt-lg-4 pb-lg-4 px-2 px-lg-0 js-popup-search-ajax" data-js-max-products="6">-->
            <!--    <div class="container">-->
            <!--        <div class="d-none d-lg-flex align-items-lg-center mb-1 mb-lg-2">-->
            <!--            <p class="m-0">WHAT ARE YOU LOOKING FOR?</p>-->
            <!--            <i class="search__close ml-auto cursor-pointer" data-js-popup-close="">-->
            <!--                <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-164" viewBox="0 0 24 24">-->
            <!--                    <path d="M19.583 4.965a.65.65 0 0 1-.176.449l-6.445 6.426 6.445 6.426c.117.131.176.28.176.449a.65.65 0 0 1-.176.449.846.846 0 0 1-.215.127.596.596 0 0 1-.468 0 .846.846 0 0 1-.215-.127l-6.426-6.445-6.426 6.445a.846.846 0 0 1-.215.127.596.596 0 0 1-.468 0 .846.846 0 0 1-.215-.127.65.65 0 0 1-.176-.449c0-.169.059-.318.176-.449l6.445-6.426-6.445-6.426a.65.65 0 0 1-.176-.449c0-.169.059-.318.176-.449a.652.652 0 0 1 .449-.176c.169 0 .319.059.449.176l6.426 6.445 6.426-6.445a.652.652 0 0 1 .449-.176c.169 0 .319.059.449.176.117.13.176.28.176.449z"></path>-->
            <!--                </svg>-->
            <!--            </i>-->
            <!--        </div>-->
            <!--        <form class="position-relative d-flex align-items-center pb-1 pb-lg-3 mb-0 border-bottom" action="/search" method="get" role="search" siq_id="autopick_2906">-->
            <!--            <input type="search" class="border-0 p-0 mb-0" name="q" id="Search" value="" placeholder="Search products...">-->
            <!--            <input type="hidden" name="options[prefix]" value="" aria-hidden="true">-->
            <!--            <label class="position-absolute right-0 mb-0 mr-0 m-lg-0 cursor-pointer" for="Search">-->
            <!--                <i>-->
            <!--                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-168" viewBox="0 0 24 24">-->
            <!--                        <path d="M13.261 2.475a8.177 8.177 0 0 1 2.588 1.738 8.172 8.172 0 0 1 1.738 2.588 7.97 7.97 0 0 1 .635 3.164 7.836 7.836 0 0 1-.527 2.861 8.355 8.355 0 0 1-1.426 2.412l4.902 4.902c.117.131.176.28.176.449s-.059.319-.176.449c-.065.052-.137.095-.215.127s-.156.049-.234.049-.156-.017-.234-.049-.149-.075-.215-.127l-4.902-4.902c-.703.6-1.507 1.074-2.412 1.426s-1.859.528-2.862.528a7.945 7.945 0 0 1-3.164-.635 8.144 8.144 0 0 1-2.588-1.738 8.15 8.15 0 0 1-1.738-2.588 7.962 7.962 0 0 1-.635-3.164 7.97 7.97 0 0 1 .635-3.164 8.172 8.172 0 0 1 1.738-2.588 8.15 8.15 0 0 1 2.588-1.738c.989-.423 2.044-.635 3.164-.635s2.174.212 3.164.635zM3.759 12.641c.358.834.85 1.563 1.475 2.188s1.354 1.117 2.188 1.475c.833.358 1.726.537 2.676.537s1.843-.179 2.676-.537c.833-.357 1.563-.85 2.188-1.475s1.116-1.354 1.475-2.188a6.705 6.705 0 0 0 .537-2.676c0-.95-.179-1.842-.537-2.676-.358-.833-.85-1.563-1.475-2.188s-1.354-1.116-2.188-1.475c-.835-.356-1.727-.536-2.677-.536s-1.843.18-2.676.537c-.833.358-1.563.85-2.188 1.475S4.117 6.456 3.759 7.289a6.694 6.694 0 0 0-.537 2.676c0 .951.178 1.843.537 2.676z"></path>-->
            <!--                    </svg>-->
            <!--                </i>-->
            <!--            </label>-->
            <!--        </form>-->
            <!--        <div class="search__content">-->
            <!--            <div class="search__result row pt-2 pt-lg-0 mt-3 mt-lg-4 d-none"></div>-->
            <!--            <div class="search__view-all pb-20 pb-lg-0 mt-20 mt-lg-10 d-none">-->
            <!--                <a href="/search?q=&amp;options[prefix]=last" class="btn-link">View all products</a>-->
            <!--            </div>-->
            <!--        </div>-->
            <!--        <p class="search__empty pb-20 pb-lg-0 mt-20 mt-lg-30 mb-0 d-none">-->
            <!--            <a href="/search?q=&amp;options[prefix]=last" class="btn-link">Search for d-lg-none" <span></span>" </a>-->
            <!--        </p>-->
            <!--    </div>-->
            <!--</div>-->
            <div class="popup-navigation__menu pt-4 pb-4 px-2" data-js-menu-mobile="">
                <div class="container" data-js-position-mobile="menu">
                    <nav class="menu menu--main js-menu js-position menu--loaded" data-js-position-name="menu">
                        <div class="menu__panel menu__list menu__level-01 d-flex flex-column flex-lg-row flex-lg-wrap d-lg-none" data-mobile-level="1">
                            <div class="menu__curtain d-none position-lg-absolute"></div>
                            <div class="menu__item menu__item--has-children has_subchild position-lg-relative">
                                <a href="javascript:void(0)" class="d-flex align-items-center" data-parent="2">
                                    <span>Products</span>
                                    <i class="menu__item_arrow d-none d-lg-flex position-lg-relative mr-0">
                                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-229" viewBox="0 0 24 24">
                                            <path d="M11.783 14.088l-3.75-3.75a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176l3.301 3.32 3.301-3.32a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .841.841 0 0 1-.215-.127z"></path>
                                        </svg>
                                    </i>
                                    <i class="menu__item_arrow ml-auto">
                                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-231" viewBox="0 0 24 24">
                                            <path d="M10.806 7.232l3.75 3.75c.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .877.877 0 0 1-.215-.127.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449l3.32-3.301L9.907 8.13a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.652.652 0 0 1 .449-.176c.169 0 .319.058.45.176z"></path>
                                        </svg>
                                    </i>
                                </a>
                                <div class="menu__dropdown position-lg-absolute">
                                    <div class="menu__list menu__list--styled menu__level-02 menu__level-02 p-lg-20">
                                        <div class="menu__item menu__back d-lg-none">
                                            <a href="collection.php">Products</a>
                                        </div>
                                        <?php 
                                            foreach ($icat_arr as $catId => $catName) {
                                            $query = mysqli_query($con, "SELECT * FROM tbl_top_category where tcat_id='$catId'");
                                            $record = mysqli_fetch_assoc($query);
                                            $top=$record['slug'];
                                        ?>
                                         <div class="menu__item menu__item--has-children has_subchild position-lg-relative">
                                            <a href="javascript:void(0)" class="d-flex align-items-center px-lg-5" data-parent="3">
                                                <span><?php echo $catName ?></span>
                                                <i class="ml-auto">
                                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-231" viewBox="0 0 24 24">
                                                        <path d="M10.806 7.232l3.75 3.75c.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .877.877 0 0 1-.215-.127.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449l3.32-3.301L9.907 8.13a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.652.652 0 0 1 .449-.176c.169 0 .319.058.45.176z"></path>
                                                    </svg>
                                                </i>
                                            </a>
                                        <?php if (!empty($sub_arr[$catId])) { ?>
                                            <div class="menu__list menu__level-03 position-lg-absolute p-lg-15">
                                                <?php foreach ($sub_arr[$catId] as $scid => $scname) { 
                                                    $query1 = mysqli_query($con, "SELECT * FROM tbl_mid_category where mcat_id='$scid'");
                                                    $record1 = mysqli_fetch_assoc($query1);
                                                    $mid=$record1['slug'];
                                                ?>
                                                <div class="menu__item menu__back d-lg-none">
                                                    <a href="<?php echo path() ?>/category/<?php echo $top."/".$mid ?>"><?php echo $scname ?></a>
                                                </div>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                        </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="menu__item menu__item--has-children has_subchild position-lg-relative">
                                <a href="javascript:void(0)" class="d-flex align-items-center" data-parent="2">
                                    <span>Business</span>
                                    <i class="menu__item_arrow d-none d-lg-flex position-lg-relative mr-0">
                                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-229" viewBox="0 0 24 24">
                                            <path d="M11.783 14.088l-3.75-3.75a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176l3.301 3.32 3.301-3.32a.65.65 0 0 1 .449-.176c.169 0 .318.059.449.176.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .841.841 0 0 1-.215-.127z"></path>
                                        </svg>
                                    </i>
                                    <i class="menu__item_arrow ml-auto">
                                        <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-theme-231" viewBox="0 0 24 24">
                                            <path d="M10.806 7.232l3.75 3.75c.117.13.176.28.176.449a.652.652 0 0 1-.176.449l-3.75 3.75a.877.877 0 0 1-.215.127.596.596 0 0 1-.468 0 .877.877 0 0 1-.215-.127.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449l3.32-3.301L9.907 8.13a.652.652 0 0 1-.176-.449c0-.169.059-.319.176-.449a.652.652 0 0 1 .449-.176c.169 0 .319.058.45.176z"></path>
                                        </svg>
                                    </i>
                                </a>
                                <div class="menu__dropdown position-lg-absolute" style="">
                                    <div class="menu__list menu__list--styled menu__level-02 menu__level-02 p-lg-20">
                                        <div class="menu__item menu__back d-lg-none">
                                            <a href="javascript:void(0)">Business</a>
                                        </div>
                                        <div class="menu__item">
                                            <a href="javascript:void(0)" class="d-flex align-items-center px-lg-5">
                                                <span>Affiliate Program</span>
                                            </a>
                                        </div>
                                        <div class="menu__item">
                                            <a href="become-a-reseller.php" class="d-flex align-items-center px-lg-5">
                                                <span>Become a Reseller</span>
                                            </a>
                                        </div>
                                        <div class="menu__item">
                                            <a href="business-order.php" class="d-flex align-items-center px-lg-5">
                                                <span>Business Orders</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="menu__item">
                                <a href="support.php" class="d-flex align-items-center">
                                    <span>Support</span>
                                </a>
                            </div>
                            <div class="menu__item">
                                <a href="blog.php" class="d-flex align-items-center">
                                    <span>Blog</span>
                                </a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="popup-navigation__currency px-10" data-js-position-mobile="currencies"></div>
            <div class="popup-navigation__currency px-10" data-js-position-mobile="languages"></div>
        </div>
    </div>
</div>