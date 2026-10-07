.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# static fields
.field static final SYSTEM_PROP_SETUPWIZARD_THEME:Ljava/lang/String; = "setupwizard.theme"


# direct methods
.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .param p0, "fromIntent"    # Landroid/content/Intent;
    .param p1, "toIntent"    # Landroid/content/Intent;

    .line 72
    const-string v0, "theme"

    const-string v1, "theme"

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v0, "useImmersiveMode"

    const-string v1, "useImmersiveMode"

    .line 75
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 31
    const-string v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "theme":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 33
    const-string v1, "setupwizard.theme"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_0
    const v1, 0x7f1300be

    if-eqz v0, :cond_2

    .line 36
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0    # 0x2dc1f359
    const-string v3, "glif_light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1    # 0x6e4af1a
    const-string v3, "glif_v3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2    # 0x6e4af19
    const-string v3, "glif_v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3    # 0x3074c2
    const-string v3, "glif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4    # -0x49f8f44f
    const-string v3, "glif_v3_light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_5    # -0x7edf2f90
    const-string v3, "glif_v2_light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 48
    :pswitch_0    # 0x5
    const v1, 0x7f1300bd

    return v1

    .line 46
    :pswitch_1    # 0x4
    return v1

    .line 44
    :pswitch_2    # 0x3
    const v1, 0x7f1300bf

    return v1

    .line 42
    :pswitch_3    # 0x2
    const v1, 0x7f1300c0

    return v1

    .line 40
    :pswitch_4    # 0x1
    const v1, 0x7f1300c5

    return v1

    .line 38
    :pswitch_5    # 0x0
    const v1, 0x7f1300c6

    return v1

    .line 51
    :cond_2
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_5
        -0x49f8f44f -> :sswitch_4
        0x3074c2 -> :sswitch_3
        0x6e4af19 -> :sswitch_2
        0x6e4af1a -> :sswitch_1
        0x2dc1f359 -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5    # 0x0
        :pswitch_4    # 0x1
        :pswitch_3    # 0x2
        :pswitch_2    # 0x3
        :pswitch_1    # 0x4
        :pswitch_0    # 0x5
    .end packed-switch
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 55
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    .line 56
    .local v0, "suwTheme":I
    const v1, 0x7f1300c1

    .line 57
    .local v1, "wifiDialogTheme":I
    const v2, 0x7f1300c5

    if-ne v0, v2, :cond_0

    .line 58
    const v1, 0x7f1300c8

    goto :goto_0

    .line 59
    :cond_0
    const v2, 0x7f1300c6

    if-ne v0, v2, :cond_1

    .line 60
    const v1, 0x7f1300c7

    goto :goto_0

    .line 61
    :cond_1
    const v2, 0x7f1300bf

    if-ne v0, v2, :cond_2

    .line 62
    const v1, 0x7f1300c2

    goto :goto_0

    .line 63
    :cond_2
    const v2, 0x7f1300be

    if-ne v0, v2, :cond_3

    .line 64
    const v1, 0x7f130139

    goto :goto_0

    .line 65
    :cond_3
    const v2, 0x7f1300bd

    if-ne v0, v2, :cond_4

    .line 66
    const v1, 0x7f13013a

    .line 68
    :cond_4
    :goto_0
    return v1
.end method
