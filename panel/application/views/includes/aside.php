<?php $user = get_active_user(); ?>
<aside id="menubar" class="menubar light">
    <div class="app-user">
        <div class="media">
            <div class="media-left">
                <div class="avatar avatar-md avatar-circle">
                    <a href="javascript:void(0)"><img class="img-responsive" src="<?php echo base_url("assets"); ?>/assets/images/221.jpg" alt="<?php echo convertToSEO($user->full_name); ?>"/></a>
                </div><!-- .avatar -->
            </div>
            <div class="media-body">
                <div class="foldable">
                    <h5><a href="javascript:void(0)" class="username"><?php echo $user->full_name; ?></a></h5>
                    <ul>
                        <li class="dropdown">
                            <a href="javascript:void(0)" class="dropdown-toggle usertitle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <small>İşlemler</small>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu animated flipInY">
                                <li>
                                    <a class="text-color" href="<?php echo base_url(); ?>">
                                        <span class="m-r-xs"><i class="fa fa-home"></i></span>
                                        <span>Anasayfa</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="text-color" href="<?php echo base_url("users/update_form/$user->id"); ?>">
                                        <span class="m-r-xs"><i class="fa fa-user"></i></span>
                                        <span>Profilim</span>
                                    </a>
                                </li>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <a class="text-color" href="<?php echo base_url("logout"); ?>">
                                        <span class="m-r-xs"><i class="fa fa-power-off"></i></span>
                                        <span>Çıkış</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div><!-- .media-body -->
        </div><!-- .media -->
    </div><!-- .app-user -->
    <div class="menubar-scroll">
        <div class="menubar-scroll-inner">
            <ul class="app-menu">
                <?php if(isAllowedViewModule("dashboard")) { ?>
                    <li>
                        <a href="<?php echo base_url("dashboard"); ?>">
                            <i class="menu-icon zmdi zmdi-view-dashboard zmdi-hc-lg"></i>
                            <span class="menu-text">Dashboard</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("pages")) { ?>
                    <li>
                        <a href="<?php echo base_url("pages"); ?>">
                            <i class="menu-icon zmdi zmdi-view-dashboard zmdi-hc-lg"></i>
                            <span class="menu-text">Sayfalar</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("settings")) { ?>
                    <li>
                        <a href="<?php echo base_url("settings"); ?>">
                            <i class="menu-icon zmdi zmdi-settings zmdi-hc-lg"></i>
                            <span class="menu-text">Site Ayarları</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("emailsettings")) { ?>
                    <li>
                        <a href="<?php echo base_url("emailsettings"); ?>">
                            <i class="menu-icon zmdi zmdi-email zmdi-hc-lg"></i>
                            <span class="menu-text">E-posta Ayarları</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("galleries")) { ?>
                    <li>
                        <a href="<?php echo base_url("galleries"); ?>">
                            <i class="menu-icon zmdi zmdi-apps zmdi-hc-lg"></i>
                            <span class="menu-text">Galeri İşlemleri</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("slides")) { ?>
                    <li>
                        <a href="<?php echo base_url("slides"); ?>">
                            <i class="menu-icon zmdi zmdi-layers zmdi-hc-lg"></i>
                            <span class="menu-text">Slider</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("services")) { ?>
                    <li>
                        <a href="<?php echo base_url("services"); ?>">
                            <i class="menu-icon fa fa-cutlery"></i>
                            <span class="menu-text">Hizmetlerimiz</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("news")) { ?>
                    <li>
                        <a href="<?php echo base_url("news"); ?>">
                            <i class="menu-icon fa fa-newspaper-o"></i>
                            <span class="menu-text">Haberler</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("user_roles")) { ?>
                    <li>
                        <a href="<?php echo base_url("user_roles"); ?>">
                            <i class="menu-icon fa fa-eye"></i>
                            <span class="menu-text">Kullanıcı Rolü</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("users")) { ?>
                    <li>
                        <a href="<?php echo base_url("users"); ?>">
                            <i class="menu-icon fa fa-user-secret"></i>
                            <span class="menu-text">Kullanıcılar</span>
                        </a>
                    </li>
                <?php } ?>
                <?php if(isAllowedViewModule("members")) { ?>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-users"></i>
                            <span class="menu-text">Aboneler</span>
                        </a>
                    </li>
                <?php } ?>
            </ul><!-- .app-menu -->
        </div><!-- .menubar-scroll-inner -->
    </div><!-- .menubar-scroll -->
</aside>